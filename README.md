# org.Oindica.eg.db

# Introduction
This org.db package is made for organism annotation of Oryza sativa indica for GO term enrichment analysis. The raw data was obtained from Plant Biomart. Following filters were used to obtain the .csv file:

```
    Gene stable ID
    Transcript stable ID
    Strand
    GO term accession
    GO term name
    GO term definition
    GO term evidence code
    GO domain
    GOSlim GOA Accession(s)
    GOSlim GOA Description
    Gene start (bp)
    Gene end (bp)
    Gene Synonym
    Chromosome/scaffold name
    Gene name
    KEGG Pathway and Enzyme ID
    Plant Reactome Pathway ID
```

# Installation

The package was tested on R version > 4.0. In case if you find discrepency in installation, please dropin the issue.

```r
install.packages("https://github.com/Rohit-Satyam/org.Oindica.eg.db/releases/download/v0.1/org.Oindica.eg.db-v0.1.tar.gz", 
    repos = NULL, 
    type="source")
```

# Usage
The package can be loaded as

```r
library(org.Osativa.eg.db)
oindica <-org.Osativa.eg.db
#To know the keytypes use
AnnotationDbi::keytypes(oindica)

# To know the columns, use
AnnotationDbi::columns(oindica)
```

The GO term enrichment analysis can be done as follows:
```r
library(clusterProfiler)
sample_gene <- c("BGIOSGA022584","BGIOSGA002230","BGIOSGA036090","BGIOSGA022543","BGIOSGA008791","BGIOSGA024851","BGIOSGA029373")
oindica <- org.Oindica.eg.db
sample_test <- enrichGO(sample_gene, OrgDb=oindica, pvalueCutoff=1, qvalueCutoff=1, keyType = "GID", ont="ALL")
```


# References
1. [AnnotationForge](docs.google.com/spreadsheets/d/1ujC0Grg0y6Kov3srXI8K4mA73hjp4bgdpCNN8qroxqQ/edit#gid=0)

# Session Information
The session information records the versions of all the packages used in the generation of the present document.
```r
sessionInfo()
```

```r
R version 4.0.3 (2020-10-10)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 19041)

Matrix products: default

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] parallel  stats4    stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] clusterProfiler_3.16.1 org.Oindica.eg.db_0.1  AnnotationForge_1.30.1 org.Osativa.eg.db_0.1  AnnotationDbi_1.50.3  
 [6] IRanges_2.22.2         S4Vectors_0.26.1       Biobase_2.48.0         BiocGenerics_0.34.0    biomaRt_2.44.4        
[11] msigdbr_7.2.1          hypeR_1.5.4           

loaded via a namespace (and not attached):
  [1] fastmatch_1.1-0      BiocFileCache_1.12.1 plyr_1.8.6           igraph_1.2.6         splines_4.0.3       
  [6] BiocParallel_1.22.0  ggplot2_3.3.2        inline_0.3.16        urltools_1.7.3       digest_0.6.27       
 [11] htmltools_0.5.0      GOSemSim_2.14.2      viridis_0.5.1        GO.db_3.11.4         fansi_0.4.1         
 [16] magrittr_1.5         memoise_1.1.0        openxlsx_4.2.3       graphlayouts_0.7.1   RcppParallel_5.0.2  
 [21] matrixStats_0.57.0   askpass_1.1          enrichplot_1.8.1     prettyunits_1.1.1    colorspace_1.4-1    
 [26] blob_1.2.1           rvest_0.3.6          rappdirs_0.3.1       ggrepel_0.8.2        xfun_0.18           
 [31] dplyr_1.0.2          callr_3.5.1          crayon_1.3.4         RCurl_1.98-1.2       jsonlite_1.7.1      
 [36] scatterpie_0.1.5     glue_1.4.2           kableExtra_1.3.1     polyclip_1.10-0      gtable_0.3.0        
 [41] webshot_0.5.2        V8_3.2.0             pkgbuild_1.1.0       rstan_2.21.2         scales_1.1.1        
 [46] DOSE_3.14.0          DBI_1.1.0            Rcpp_1.0.5           viridisLite_0.3.0    xtable_1.8-4        
 [51] progress_1.2.2       gridGraphics_0.5-0   bit_4.0.4            europepmc_0.4        StanHeaders_2.21.0-6
 [56] htmlwidgets_1.5.2    httr_1.4.2           fgsea_1.14.0         RColorBrewer_1.1-2   ellipsis_0.3.1      
 [61] pkgconfig_2.0.3      loo_2.3.1            XML_3.99-0.5         farver_2.0.3         dbplyr_1.4.4        
 [66] ggplotify_0.0.5      tidyselect_1.1.0     rlang_0.4.8          reshape2_1.4.4       later_1.1.0.1       
 [71] munsell_0.5.0        tools_4.0.3          visNetwork_2.0.9     downloader_0.4       cli_2.1.0           
 [76] generics_0.0.2       RSQLite_2.2.1        ggridges_0.5.2       evaluate_0.14        stringr_1.4.0       
 [81] fastmap_1.0.1        yaml_2.2.1           processx_3.4.4       knitr_1.30           bit64_4.0.5         
 [86] tidygraph_1.2.0      zip_2.1.1            purrr_0.3.4          ggraph_2.0.3         reactable_0.2.3     
 [91] mime_0.9             DO.db_2.9            xml2_1.3.2           compiler_4.0.3       rstudioapi_0.11     
 [96] curl_4.3             tibble_3.0.4         tweenr_1.0.1         stringi_1.5.3        ps_1.4.0            
[101] lattice_0.20-41      Matrix_1.2-18        vctrs_0.3.4          pillar_1.4.6         lifecycle_0.2.0     
[106] BiocManager_1.30.10  triebeard_0.3.0      data.table_1.13.2    cowplot_1.1.0        bitops_1.0-6        
[111] httpuv_1.5.4         qvalue_2.20.0        R6_2.5.0             promises_1.1.1       gridExtra_2.3       
[116] codetools_0.2-16     MASS_7.3-53          assertthat_0.2.1     openssl_1.4.3        withr_2.3.0         
[121] hms_0.5.3            grid_4.0.3           tidyr_1.1.2          rmarkdown_2.5        rvcheck_0.1.8       
[126] ggforce_0.3.2        shiny_1.5.0         
```
