library(tidyverse)
library(usethis)


cb_var_oegts_cmetric <- read_csv(file="data-raw/cb_var_oegts_cmetric.csv", col_names = TRUE, col_types = "cccc")

usethis::use_data(cb_var_oegts_cmetric, internal = FALSE)
