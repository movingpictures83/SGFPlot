## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)


input <- function(inputfile) {
   sgfc_ucsc <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
## ----figure-1, fig.width=4.5, fig.height=4.5-------------------------------
pdf(outputfile)

#print(str(sgfc_ucsc))
write.csv(sgfc_ucsc@assays@data$rpkm, paste(outputfile, "csv", sep="."))
plotFeatures(sgfc_ucsc, geneID = 1)
}

