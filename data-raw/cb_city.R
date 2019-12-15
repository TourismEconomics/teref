library(tidyverse)
library(usethis)
#library(here)


cb_city <- read_csv(file="data-raw/cb_city.csv", col_names = TRUE, col_types = "ccccccccc")

 # cb_city <- cb_city %>%
 #  mutate(mkt_geocode_friendly = mkt_name)

a <- cb_city %>%
  group_by(mkt_name) %>%
  filter(n()>1)
stopifnot(nrow(a)==0)

# cb_ctry_a <- cb_ctry %>%
#   select(country_name, iso3166_1a3)
#
# cb_city <- cb_city %>%
#   left_join(cb_ctry_a, by=c("country_name"))

# cb_city <- cb_city %>%
#   select(mkt_name, mkt_sh, country_name, iso3166_1a3,
#          oegc_name, oegc_loc_code, oegc_ctry_name, mkt_geocode_friendly, oe_gct_name,
#          oe_gct_location_code, note)

# write_excel_csv(cb_city, "cb_city.csv")

usethis::use_data(cb_city, internal = FALSE)
