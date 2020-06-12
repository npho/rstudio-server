# setup monocle3 and other stuff

options(repos=c(CRAN="http://cran.rstudio.com"))
install.packages("tidyverse")

# https://cole-trapnell-lab.github.io/monocle3/docs/installation/

# install Bioconductor
if (!requireNamespace("BiocManager", quietly=TRUE))
install.packages("BiocManager")
BiocManager::install(version="3.10")

# install Bioconductor packages
BiocManager::install(c('BiocGenerics', 'DelayedArray', 'DelayedMatrixStats',
                       'limma', 'S4Vectors', 'SingleCellExperiment',
                       'SummarizedExperiment', 'batchelor', 'Matrix.utils'))

# install monocle3
install.packages("devtools")
devtools::install_github('cole-trapnell-lab/leidenbase')
devtools::install_github('cole-trapnell-lab/monocle3')
