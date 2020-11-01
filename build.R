library(AnnotationForge)

## Importing the table downloading from plant biomart
table <- read.csv("mart_export.txt",h=T)

## The GIDs are Ensembl gene IDs. These need to be non-redundant otherwise it will throw an error
oChr <- unique(table[,c(1,14)])
oChr <- oChr[oChr[,2]!="-",]
colnames(oChr) <- c("GID","CHR")

## Making GO dataframe
table$GO.domain <- gsub("molecular_function", "MF", table$GO.domain)
table$GO.domain <- gsub("biological_process", "BP", table$GO.domain)
table$GO.domain <- gsub("cellular_component", "CP", table$GO.domain)
#oGO <- unique(table[,c(1,4,9,8,7)])
oGO <- unique(table[,c(1,4,7)])
oGO <- oGO[oGO[,2]!="",]
oGO <- oGO[oGO[,3]!="",]
#oGO <- oGO[oGO[,4]!="",]
#colnames(oGO) <- c("GID","GO","GOALL","ONTOLOGY","EVIDENCE")
colnames(oGO) <- c("GID","GO","EVIDENCE")

makeOrgPackage(chromosome=oChr,go=oGO,
               version="0.1",
               maintainer="Rohit Satyam <rohitsatyam102@gmail.com>",
               author="Rohit Satyam <rohitsatyam102@gmail.com>",
               outputDir = ".",
               tax_id="39946",
               genus="Oryza",
               species="indica",
               goTable="go")

install.packages("./org.Oindica.eg.db", repos=NULL, type="source")
