#!/usr/bin/Rscript

library(xml2)
page <- read_html("https://dailies.rstudio.com")
builds_page_url <- xml_text(xml_find_all(page, "//a[contains(@aria-label, 'RStudio Server for Ubuntu 18/20 (x86_64)')]/@href"))
builds_page_url <- paste0(
  "https://dailies.rstudio.com",
  builds_page_url
)

builds_page <- read_html(builds_page_url)
file_name <- xml_text(xml_find_all(builds_page, "//a[starts-with(text(), 'rstudio-server')]/@href"))
file_name <- file_name[1]
download.file(file_name,
  method = "wget",
  dest = "rstudio-server-preview-amd64.deb"
)
