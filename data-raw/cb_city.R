library(tidyverse)
library(usethis)


cb_city <- read_csv(file="data-raw/cb_city.csv", col_names = TRUE, col_types = "ccccccccccc")

usethis::use_data(cb_city, internal = FALSE)
