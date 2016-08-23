FROM nareal/r_docker_tidyverse_spiced

## This handle reaches Carl and Dirk
MAINTAINER "Nelson Areal" nareal@gmail.com

ENV DEBIAN-FRONTEND noninteractive  
ENV PATH /usr/lib/rstudio-server/bin/:$PATH   

RUN rstudio-server stop \
  && apt-get update \
  && wget --no-check-certificate \
    https://raw.githubusercontent.com/rocker-org/rstudio-daily/master/latest.R \
  && Rscript latest.R && rm latest.R 