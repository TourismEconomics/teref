library(dplyr)
library(readr)
library(usethis)

cb_ctry <- read_csv(file="data-raw/cb_ctry.csv", col_names = TRUE, col_types = "ccccccccccccccc")

use_data(cb_ctry, internal = FALSE)
