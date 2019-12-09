library(tidyverse)
library(usethis)


cb_var_oegc <- read_csv(file="data-raw/cb_var_oegc.csv", col_names = TRUE, col_types = "cccc")

usethis::use_data(cb_var_oegc, internal = FALSE)
