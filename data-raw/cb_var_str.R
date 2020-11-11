library(tidyverse)
library(usethis)


cb_var_str <- read_csv(file="data-raw/cb_var_str.csv", col_names = TRUE, col_types = "cc")

usethis::use_data(cb_var_str, internal = FALSE)
