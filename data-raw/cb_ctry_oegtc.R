library(tidyverse)
library(usethis)


cb_ctry_oegtc <- read_csv(file="data-raw/cb_ctry_oegtc.csv", col_names = TRUE, col_types = "ccccccc")

usethis::use_data(cb_ctry_oegtc, internal = FALSE)
