#!/usr/bin/Rscript

library(xml2)
page <- read_html("https://dailies.rstudio.com")
file_name <- xml_text(xml_find_all(page, "//a[contains(@aria-label, 'RStudio Server for Ubuntu 18/20 (x86_64)')]/@href"))
file_name <- paste0(
  "https://dailies.rstudio.com",
  file_name
)
download.file(file_name, method = "wget", dest = "rstudio-server-preview-amd64.deb")
