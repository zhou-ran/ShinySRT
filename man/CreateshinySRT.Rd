% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makespatialshiny.R
\name{CreateshinySRT}
\alias{CreateshinySRT}
\title{Make a shiny app}
\usage{
CreateshinySRT(
  dat,
  meta.to.include = NA,
  tooltip_col = NULL,
  maxlevel = 50,
  shiny.dir = "shinyspatial_app",
  title = "spatial_example",
  chunkSize = 500,
  gex.assay = NA,
  gex.slot = c("data", "scale.data", "counts"),
  gene.mapping = F,
  scmtx = NULL,
  scmeta = NULL,
  normalize = F,
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
\item{dat}{inported data for shinySRT}

\item{meta.to.include}{display the meta.data colnames}

\item{maxlevel}{maximum number of levels allowed for categorical metadata.
maximum number of levels allowed for categorical metadata.}

\item{shiny.dir}{specify directory to create the shiny app in}

\item{chunkSize}{number of genes written to h5file at any one time. Lower
this number to reduce memory consumption. Should not be less than 10}

\item{gex.assay}{assay in single-cell data object to use for plotting
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
\value{
data files and codes required for shiny app
}
\description{
make a shiny app based on the spatial transcriptome
}
\examples{
CreateshinySRT(
dat,
meta.to.include = NA,
maxlevel = 50,
shiny.dir = 'shinyspatial_app',
chunkSize = 500,
gex.assay = NA,
gex.slot = c("data", "scale.data", "counts"),
gene.mapping = TRUE,
default.gene1 = NA,
default.gene2 = NA,
default.multigene = NA)



}
