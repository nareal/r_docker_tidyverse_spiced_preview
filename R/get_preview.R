#!/usr/bin/Rscript

page <- rvest::html("https://www.rstudio.com/products/rstudio/download/preview/")
file_version <- rvest::html_text(rvest::html_nodes(page, "h2")[1])
file_version <- sub(".*v([0-9]\\.[0-9]*\\.[0-9]*).*", "\\1", file_version)
file_name <- paste0("https://s3.amazonaws.com/rstudio-dailybuilds/rstudio-server-", file_version, "-amd64.deb")
download.file(file_name, method="wget", dest="rstudio-server-daily-amd64.deb")

