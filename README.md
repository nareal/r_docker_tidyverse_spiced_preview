# r_docker_tidyverse_spiced_preview

[![Build Status](https://travis-ci.org/nareal/r_docker_tidyverse_spiced_preview.svg?branch=master)](https://travis-ci.org/nareal/hr_docker_tidyverse_spiced_preview) [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

This docker file extends the [rocker/tidyverse](https://hub.docker.com/r/rocker/tidyverse/) docker image, that includes the latest daily RStudio build + rmarkdown/pandoc/latex + R package ecosystem from Hadley Wickham, for more information check the [Rocker Project](https://rocker-project.org/images/versioned/rstudio.html)

The current image uses the latest R version, and the daily RStudio build versions and adds the following packages from [CRAN](https://cran.r-project.org/):

- [fBasics](https://cran.r-project.org/web/packages/fBasics/index.html)
- [fGarch](https://cran.r-project.org/web/packages/fGarch/index.html)
- [rugarch](https://cran.r-project.org/web/packages/rugarch/index.html)
- [forecast](https://cran.r-project.org/web/packages/forecast/index.html)
- [timeSeries](https://cran.r-project.org/web/packages/timeSeries/index.html)
- [flexdashboard: Easy interactive dashboards for R](http://rmarkdown.rstudio.com/flexdashboard/)
- [Leaflet](http://rstudio.github.io/leaflet/)
- [dygraphs](http://rstudio.github.io/dygraphs/)
- [Plotly](https://plot.ly/r/getting-started/)
- [rbokeh](http://hafen.github.io/rbokeh/)
- [Highcharter](http://jkunst.com/highcharter/)
- [networkD3](http://christophergandrud.github.io/networkD3/)
- [DT](http://rstudio.github.io/DT/)
- [ggvis](http://ggvis.rstudio.com/)
- [xts](https://cran.r-project.org/web/packages/xts/index.html)
- [remotes](https://cran.r-project.org/web/packages/remotes/index.html)
- [here](https://github.com/r-lib/here)
- [googledrive](https://cran.r-project.org/web/packages/googledrive/index.html)
- [quanteda](https://cran.r-project.org/web/packages/quanteda/index.html)
- [readtext](https://cran.r-project.org/web/packages/readtext/index.html)
- [furrr](https://cran.r-project.org/web/packages/furrr/index.html)
- [duckdb](https://cran.r-project.org/web/packages/duckdb/index.html)
- [frenchdata](https://cran.r-project.org/web/packages/frenchdata/index.html)

and the following from github repositories:

- [d3heatmap](https://github.com/rstudio/d3heatmap)
- [metricsgraphics](http://hrbrmstr.github.io/metricsgraphics/)
- [Slidify](http://slidify.org/#)
- [hadley/multidplyr: Partitioned data frames for 'dplyr'](https://github.com/hadley/multidplyr)

Additionaly adds the `curl` linux package to the image.

To use this image run:

```
docker run -d -p 8787:8787 -e PASSWORD=<password> nareal/r_docker_tidyverse_spiced
```

You can now visit: `http://localhost:8787`, the user is `rstudio`. 

**NOTE:** As of November, 7 2022, the rstudio rocker image does not work for M1 Macs if you ran the image as a root user. More details in here: [Operation Not Permitted Error from Rocker RStudio Image on M1 MacBook · Issue #287 · rocker-org/rocker-versioned2](https://github.com/rocker-org/rocker-versioned2/issues/287)

For more details refer to the instructions:  
- [for using the RStudio rocker image, from rocker-org](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image)  
- [Rocker Project - rstudio, tidyverse, verse, geospatial](https://rocker-project.org/images/versioned/rstudio.html)  

The image is rebuild automatically on [docker hub](https://hub.docker.com/r/nareal/r_docker_tidyverse_spiced_preview/) whenever this dockerfile changes or when [rocker/tidyverse](https://hub.docker.com/r/rocker/tidyverse/) image changes.

# License

The Dockerfile in this repository is licensed under the GPL 2 or later.

