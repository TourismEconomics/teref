library(dplyr)
library(readr)

ctry_code_book <- read_csv(file="data-raw/ctry_code_book.csv", col_names = TRUE, col_types = "cccccccccccccc")


save(ctry_code_book, file = "data/ctry_code_book.rdata")
