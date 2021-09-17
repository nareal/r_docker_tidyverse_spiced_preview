#!/usr/bin/Rscript

library(xml2)
page <- read_html("https://www.rstudio.com/products/rstudio/download/preview/")
file_name <- xml_text(xml_find_all(page, "//a[starts-with(text(), 'RStudio Server') and contains(text(), 'Ubuntu')]/@href"))
download.file(file_name, method="wget", dest="rstudio-server-preview-amd64.deb")
