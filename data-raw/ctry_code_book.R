library(dplyr)
library(readr)
library(usethis)

ctry_code_book <- read_csv(file="data-raw/ctry_code_book.csv", col_names = TRUE, col_types = "cccccccccccccc")

use_data(ctry_code_book, internal = FALSE)
