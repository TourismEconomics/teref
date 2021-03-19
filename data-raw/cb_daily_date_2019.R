library(dplyr)
library(readr)
library(usethis)

cb_daily_date_2019 <- read_csv(file="data-raw/cb_daily_date_2019.csv", col_names = TRUE, col_types = "cc")


# check for duplicates

stopifnot(!any(duplicated(cb_daily_date_2019$date)))


# use table

use_data(cb_daily_date_2019, internal = FALSE)
