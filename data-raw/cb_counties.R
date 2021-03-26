library(tidyverse)
library(usethis)
library(readr)
library(janitor)
library(stringi)


# census bureau gazetteer file listing counties
gaz_counties <- read_delim("data-raw/2020_Gaz_counties_national.txt", "\t", escape_double = FALSE, trim_ws = TRUE, col_types=cols(
    USPS = col_character(),
    GEOID = col_character(),
    ANSICODE = col_character(),
    NAME = col_character(),
    ALAND = col_double(),
    AWATER = col_double(),
    ALAND_SQMI = col_double(),
    AWATER_SQMI = col_double(),
    INTPTLAT = col_double(),
    INTPTLONG = col_double()
  )) %>%
  clean_names()

# fips codes from tidycensus package
fips_codes <- read_csv("data-raw/fips_codes_tidycensus_2021-03.csv", col_types=cols(
  state = col_character(),
  state_code = col_character(),
  state_name = col_character(),
  county_code = col_character(),
  county = col_character()
))


########
#
# Take the counties from the current Census Bureau gazetteer list of
# counties.
# But change the names to replace special characaters. And add some
# counties that appear in tidycensus. These are counties that
# existing previously. These can be dropped by just filtering the
# source column to "census_gazetteer".

# what would it look like if I took the counties from gaz counties
temp_cty_1 <- gaz_counties %>%
  select(state=usps, geoid, ansicode, name) %>%
  # convert accented characters
  mutate(name = ifelse(is.na(name), NA_character_,
                       stri_trans_general(str = name, id="latin-ascii")))

# is this unique
a <- temp_cty_1 %>%
  group_by(geoid, name) %>%
  filter(n()>1)
stopifnot(0 == nrow(a))

# use fips_codes from tidycensus
hold_1 <- fips_codes %>%
  unite(geoid, state_code, county_code, sep="")

# combine with fips_codes from tidycensus
temp_cty_2 <- temp_cty_1 %>%
  right_join(hold_1, by=c("geoid", "state")) %>%
  # are the names the same
  mutate(same = ifelse(name==county,T, F)) %>%
  mutate(source= ifelse(is.na(name), "tidycensus", "census_gazetteer")) %>%
  mutate(name = ifelse(is.na(name), county, name)) %>%
  select(state, geoid, ansicode, county=name, state_name, source)

cb_counties <- temp_cty_2 %>%
  mutate(geoid_stcounty = geoid) %>%
  mutate(geoid = paste0("05000US", geoid)) %>%
  select(geoid, geoid_stcounty, ansicode, state, state_name, county, state)


usethis::use_data(cb_counties, internal = FALSE)
