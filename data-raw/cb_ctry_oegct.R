library(tidyverse)
library(usethis)


cb_ctry_oegct <- read_csv(file="data-raw/cb_ctry_oegct.csv", col_names = TRUE, col_types = "ccccccc")

usethis::use_data(cb_ctry_oegct, internal = FALSE)
