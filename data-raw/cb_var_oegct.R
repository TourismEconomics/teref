library(tidyverse)
library(usethis)


cb_var_oegct <- read_csv(file="data-raw/cb_var_oegct.csv", col_names = TRUE,
                         col_types = "cccccc")

usethis::use_data(cb_var_oegct, internal = FALSE)
