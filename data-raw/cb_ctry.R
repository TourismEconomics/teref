library(dplyr)
library(readr)
library(usethis)

cb_ctry <- read_csv(file="data-raw/cb_ctry.csv", col_names = TRUE, col_types = "ccccccccccccccccccccc")


# check for duplicates

stopifnot(!any(duplicated(cb_ctry$country_name)))
stopifnot(!any(duplicated(cb_ctry$iso3166_1a3)))

# check for duplicates, handling na
temp <- cb_ctry %>%
  filter(!(is.na(internet_tld))) %>%
  group_by(internet_tld) %>%
  filter(n()>1)
stopifnot(nrow(temp)==0)


# use table

use_data(cb_ctry, internal = FALSE)
