# r_docker_tidyverse_spiced_preview

[![Build Status](https://travis-ci.org/nareal/r_docker_tidyverse_spiced_preview.svg?branch=master)](https://travis-ci.org/nareal/hr_docker_tidyverse_spiced_preview) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)


This docker file adds the preview version of Rstudio to the [https://hub.docker.com/r/nareal/r_docker_tidyverse_spiced/](https://hub.docker.com/r/nareal/r_docker_tidyverse_spiced/). This image extends [rocker/hadleyverse](https://hub.docker.com/r/rocker/hadleyverse/) docker image, that includes RStudio + rmarkdown/pandoc/latex + R package ecosystem from Hadley Wickham, for more information check the [rocker-org/hadleyverse github repository](https://github.com/rocker-org/hadleyverse) and [nareal/r_docker_tidyverse_spiced: Docker image](https://github.com/nareal/r_docker_tidyverse_spiced).

To use this image run:

```
docker run -d -p 8787:8787 -e USER=<username> -e PASSWORD=<password> nareal/r_docker_tidyverse_spiced_preview
```

For more details refer to the instructions [for using the RStudio rocker image, from rocker-org](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image).

The image is rebuild automatically on [docker hub](https://hub.docker.com/r/nareal/r_docker_tidyverse_spiced_preview/) whenever this dockerfile changes or when [rocker/rstudio-daily/](https://hub.docker.com/r/rocker/rstudio-daily/) or [nareal/r_docker_tidyverse_spiced/](https://hub.docker.com/r/nareal/r_docker_tidyverse_spiced/) images change.

# License

The Dockerfile in this repository is licensed under the GPL 2 or later.
