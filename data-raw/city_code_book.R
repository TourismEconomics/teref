library(dplyr)
library(readr)

city_code_book <- read_csv(file="input_data/code_books/city_code_book.csv", col_names = TRUE, col_types = "ccccccccccc")

save(ctry_code_book, file = "data/ctry_code_book.rdata")
