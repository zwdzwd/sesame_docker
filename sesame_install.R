BiocManager::install("sesame", version = "3.8", update=FALSE, ask=FALSE)


# copied from https://github.com/Bioconductor/bioc_docker/blob/master/out/release_core/install.R
# just in case there were warnings, we want to see them
# without having to scroll up:
warnings()

if (!is.null(warnings()))
{
  w <- capture.output(warnings())
    if (length(grep("is not available|had non-zero exit status", w)))
      quit("no", 1L)
}

suppressWarnings(BiocManager::install(update=TRUE, ask=FALSE))
