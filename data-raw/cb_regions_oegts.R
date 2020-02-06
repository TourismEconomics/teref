library(tidyverse)
library(usethis)


cb_regions_oegts <- read_csv(file="data-raw/cb_regions_oegts.csv", col_names = TRUE, col_types = "ccc")

usethis::use_data(cb_regions_oegts, internal = FALSE)
