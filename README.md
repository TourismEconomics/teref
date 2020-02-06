
<!-- README.md is generated from README.Rmd. Please edit that file -->

# teref

<!-- badges: start -->

<!-- badges: end -->

This package provides reference tables, such as showing the
correspondence between country and city names and codes across different
databases and sources. This package contains three reference tables:

  - **cb\_ctry:** Country names and codes across databases.  
  - **cb\_city:** City names and codes across databases.
  - **cb\_ctry\_oegtc:** Country names, codes and regions used in the
    Global City Travel database.
  - **cb\_var\_oegc:** Variable codes and descriptions to use with the
    Global Cities database.
  - **cb\_var\_oegct:** Variable codes and descriptions to use with the
    Global City Travel database.

## Installation

You can install the package from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("TourismEconomics/teref")
```

## Organization

The tables, or code books, are stored as Rdata files in the “data”
directory.

## Suggestions

When using the cb\_ctry or the cb\_city with the Global Cities database,
it is advisable to join based on the oegc\_loc\_code, rather than the
location name, because some city-country situations have the same
location name (e.g. Singapore, Luxembourg, Hong Kong, Macao).
