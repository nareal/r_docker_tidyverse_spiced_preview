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
