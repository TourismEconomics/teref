
library(tidyverse)
library(usethis)
library(readr)
library(janitor)
library(stringi)




list1_2020 <- read_excel("data-raw/list1_2020.xls",
                         skip = 2) %>%
  clean_names() %>%
  filter(!(is.na(cbsa_title)))



cb_cbsa_list <- list1_2020 %>%
  rename(geoid_cbsa=cbsa_code,
         geoid_md=metropolitan_division_code,
         geoid_csa=csa_code) %>%
  unite(geoid_stcounty, fips_state_code, fips_county_code, sep="", remove=T)


usethis::use_data(cb_cbsa_list, internal = FALSE)
