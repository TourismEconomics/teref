library(tidyverse)
library(usethis)


ctry_code_book_oegtc <- read_csv(file="data-raw/ctry_code_book_oegtc.csv", col_names = TRUE, col_types = "cccccc")

usethis::use_data(ctry_code_book_oegtc, internal = FALSE)
