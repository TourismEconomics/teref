library(tidyverse)
library(usethis)
library(readr)
library(janitor)
library(stringi)



gaz_cbsa <- read_delim("data-raw/2020_Gaz_cbsa_national.txt", "\t", escape_double = FALSE, trim_ws = TRUE, col_types=cols(
  CSAFP = col_double(),
  GEOID = col_double(),
  NAME = col_character(),
  CBSA_TYPE = col_double(),
  ALAND = col_double(),
  AWATER = col_double(),
  ALAND_SQMI = col_double(),
  AWATER_SQMI = col_double(),
  INTPTLAT = col_double(),
  INTPTLONG = col_double()
)) %>%
  clean_names()


list1_2020 <- read_excel("data-raw/list1_2020.xls",
                         skip = 2) %>%
  clean_names() %>%
  filter(!(is.na(cbsa_title)))


###########
#
# compare the lists

temp_1 <- gaz_cbsa %>%
  select(geoid, name) %>%
  mutate(geoid = as.character(geoid)) %>%
  mutate(area_type = case_when(str_detect(name, "Metro Area") ~ "Metro Area",
                               str_detect(name, "Micro Area") ~ "Micro Area",
                               T ~ NA_character_)) %>%
  mutate(name = str_replace(name, " Metro Area", "")) %>%
  mutate(name = str_replace(name, " Micro Area", "")) %>%
  rename(cbsa_name = name)

hold_1 <- list1_2020 %>%
  select(geoid=cbsa_code, cbsa_title) %>%
  distinct()

# the two files are both from the census bureau, and they have the same names
temp_2 <- temp_1 %>%
  full_join(hold_1, by=c("geoid")) %>%
  # are the names the same
  mutate(same = ifelse(cbsa_name==cbsa_title, T, F))

####
#
# they are the same, so just use a few columns from the gazetteer

cb_cbsa <- temp_1 %>%
  mutate(geoid_cbsa=geoid) %>%
  mutate(geoid = paste0("32000US", geoid))

write_excel_csv(cb_cbsa, "cb_cbsa.csv")

usethis::use_data(cb_cbsa, internal = FALSE)
