library(tidyverse)
library(usethis)
#library(here)


cb_city <- read_csv(file="data-raw/cb_city.csv", col_names = TRUE, col_types = "ccccccccccc")

# cb_city <- cb_city %>%
#   mutate(mkt_geocode_friendly = ifelse(is.na(mkt_geocode_friendly), mkt_name,
#                                        mkt_geocode_friendly))
# write_csv(cb_city, "cb_city.csv")

usethis::use_data(cb_city, internal = FALSE)
