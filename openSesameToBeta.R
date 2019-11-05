#!/usr/bin/Rscript

args = commandArgs(trailingOnly=TRUE)
library(sesame)
betas <- openSesame(args[1])
saveRDS(betas, file=args[2])
