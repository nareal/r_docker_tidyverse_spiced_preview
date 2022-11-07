FROM rocker/tidyverse:latest-daily
LABEL org.opencontainers.image.authors="Nelson Areal <nareal@gmail.com>"

RUN apt-get update -y \
  && apt-get install -y curl libjpeg-dev libpoppler-cpp-dev opensp

## Install additional packages. 
RUN install2.r --error \
  fBasics \
  # fArma \
  fGarch \
  rugarch \
  forecast \
  timeSeries \
  flexdashboard \
  leaflet \
  dygraphs \ 
  plotly \
  rbokeh \ 
  highcharter \
  networkD3 \
  DT \
  ggvis \ 
  xts \
  remotes \ 
  here \
  googledrive \
  quanteda \
  readtext \ 
  furrr \ 
  duckdb \
  multidplyr \
  frenchdata &> /dev/null

## Install packages from github
RUN r -e 'remotes::install_github("ramnathv/slidify", quiet = TRUE)' \
  && r -e 'remotes::install_github("rstudio/d3heatmap", quiet = TRUE)' \
  && r -e 'remotes::install_github("hrbrmstr/metricsgraphics", quiet = TRUE)'
