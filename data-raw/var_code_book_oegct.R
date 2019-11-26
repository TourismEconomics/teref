library(tidyverse)
library(usethis)


var_code_book_oegct <- read_csv(file="data-raw/var_code_book_oegct.csv", col_names = TRUE, col_types = "cccc")

usethis::use_data(var_code_book_oegct, internal = FALSE)
