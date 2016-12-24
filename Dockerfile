FROM nareal/r_docker_tidyverse_spiced

## This handle reaches Carl and Dirk
MAINTAINER "Nelson Areal" nareal@gmail.com

ENV DEBIAN-FRONTEND noninteractive  
ENV PATH /usr/lib/rstudio-server/bin/:$PATH   

RUN apt-get update -y \
  && apt-get --purge remove -y rstudio-server \
  && wget --no-check-certificate \
    https://raw.githubusercontent.com/rocker-org/rstudio-daily/master/latest.R \
  && Rscript latest.R && rm latest.R 

RUN dpkg -i rstudio-server-daily-amd64.deb \
  && rm rstudio-server-*-amd64.deb   