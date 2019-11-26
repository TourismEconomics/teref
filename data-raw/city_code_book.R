library(tidyverse)
library(usethis)


city_code_book <- read_csv(file="data-raw/city_code_book.csv", col_names = TRUE, col_types = "ccccccccccc")

usethis::use_data(city_code_book, internal = FALSE)
