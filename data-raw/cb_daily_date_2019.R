library(dplyr)
library(readr)
library(usethis)

cb_daily_date_2019 <- read_csv(file="data-raw/cb_daily_date_2019.csv", col_names = TRUE, col_types = "cc") %>%
  mutate(date = as.Date(date, "%m/%d/%Y"),
         date_2019 = as.Date(date_2019, "%m/%d/%Y")) %>%
  filter(!(is.na(date)))




# check for duplicates

stopifnot(!any(duplicated(cb_daily_date_2019$date)))


# use table

use_data(cb_daily_date_2019, internal = FALSE)
