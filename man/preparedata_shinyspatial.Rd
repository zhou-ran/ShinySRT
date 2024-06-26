% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepare_file.R
\name{preparedata_shinyspatial}
\alias{preparedata_shinyspatial}
\title{Prepare data files required for shiny app}
\usage{
preparedata_shinyspatial(
  dat,
  meta.to.include = NA,
  tooltip_col = NULL,
  maxlevel = 50,
  shiny.dir = "shinyspatial_app",
  chunkSize = 500,
  gex.assay = NA,
  gex.slot = c("data", "scale.data", "counts"),
  gene.mapping = TRUE,
  scmtx = NULL,
  scmeta = NULL,
  normalize = T,
  sp_normalize = F,
  colcluster = NULL,
  sp_cols = NULL,
  default.gene1 = NA,
  default.gene2 = NA,
  default.multigene = NA,
  web = F,
  tmpdir = "/srv/shiny-server/temp/"
)
}
\arguments{
\item{dat}{imported data for shinySRT}

\item{meta.to.include}{display the meta.data colnames}

\item{maxlevel}{maximum number of levels allowed for categorical metadata.
maximum number of levels allowed for categorical metadata.}

\item{shiny.dir}{specify directory to create the shiny app in}

\item{chunkSize}{number of genes written to h5file at any one time. Lower
this number to reduce memory consumption. Should not be less than 10}

\item{gex.assay}{assay in spatially resolved transcriptomic data object to use for plotting
gene expression, which must match one of the following:
\itemize{
\item{Seurat objects}: "RNA" or "integrated" assay,
default is "RNA"
\item{SCE objects}: "logcounts" or "normcounts" or "counts",
default is "logcounts"
\item{h5ad files}: "X" or any assay in "layers",
default is "X"
}}

\item{gene.mapping}{specifies whether to convert human / mouse Ensembl gene
IDs (e.g. ENSG000xxx / ENSMUSG000xxx) into "user-friendly" gene symbols.
Set this to \code{TRUE} if you are using Ensembl gene IDs. Default is
\code{FALSE} which is not to perform any conversion. Alternatively, users
can supply a named vector where \code{names(gene.mapping)} correspond
to the actual gene identifiers in the gene expression matrix and
\code{gene.mapping} correspond to new identifiers to map to}

\item{scmtx}{scRNA expression matrix}

\item{scmeta}{scRNA metadata}

\item{normalize}{normlize the scRNA expression data}

\item{sp_normalize}{normalize the ST RNA expression data}

\item{default.gene1}{specify primary default gene to show}

\item{default.gene2}{specify secondary default gene to show}

\item{default.multigene}{character vector specifying default genes to
show in bubbleplot / heatmap}

\item{shiny.prefix}{specify file prefix}
}
\description{
This function could generate data files for shiny app by saptial transcriptomic data, e.g. matrix, metadata, coordination, H&E images.
}
\details{
Generate data files required for shiny app.Six files will be generated,
(1) shinySRT config \code{meta_group.Rds}
(2) the gene mapping object config \code{genesets.Rds}
(3) the gene expression \code{data.h5}
(4) the spatial metadata \code{meta.Rds}
(5) the defaults for the shiny app \code{df_select.Rds}
(6) the spatial image \code{image.Rds}
Note that both \code{preparedata_shinyspatial} and \code{prepare_code} functions are ran when
running the wrapper function \code{CreateshinySRT}.
}
\examples{
preparedata_shinyspatial(dat,
meta.to.include = NA, #spot information
maxlevel = 50, # spot information selected
shiny.dir = 'shinyspatial_app', # dir
chunkSize = 500,
gex.assay = NA, # assay spesific
gex.slot = c("data", "scale.data","counts"),
gene.mapping = TRUE,
default.gene1 = NA,
default.gene2 = NA,default.multigene = NA)


}
