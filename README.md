
<!-- README.md is generated from README.Rmd. Please edit that file -->

# teref

<!-- badges: start -->
<!-- badges: end -->

This package provides reference tables, such as showing the
correspondence between country and city names and codes across different
databases and sources. This package contains three reference tables:

-   **cb\_ctry:** Country names and codes across databases.  
-   **cb\_city:** City names and codes across databases.
-   **cb\_ctry\_oegct:** Country names, codes and regions used in the
    Global City Travel database.
-   **cb\_regions\_oegts:** Region names and codes used in the Global
    Travel Service database.
-   **cb\_var\_oegc:** Variable codes and descriptions to use with the
    Global Cities database.
-   **cb\_var\_oegct:** Variable codes and descriptions to use with the
    Global City Travel database.
-   **cb\_var\_oegts\_cmetric:** Variable codes and descriptions to use
    with the country metric variables in the Global Travel Service
    database.

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

# Background

### CBSA and County File Preparation

Background notes on the approach to prepare the CBSA and county file.

#### Terms

-   Core Based Statistical Areas (CBSAs): Refer collectively to
    metropolitan statistical areas and micropolitan statistical areas.
    CBSAs consist of a county or counties (or equivalent entities).

-   Combined Statistical Area: Consists of two or more adjacent core
    based statistical areas (CBSAs) that have an employment interchange
    measure of 15 or more.

-   Metropolitan Division: A county or group of counties (or equivalent
    entities) delineated within a larger metropolitan statistical area.

-   Metropolitan Statistical Area: A geographic entity delineated by the
    Office of Management and Budget for use by federal statistical
    agencies (at least one urbanized area of 50,000 population).

-   Micropolitan Statistical Area: A geographic entity delineated by the
    Office of Management and Budget for use by federal statistical
    agencies (at least one urbanized area of 10,000 population, but less
    than 50,000).

#### Codes

##### geoids

Census Bureau uses geographic identifiers (geoids). Census provides a
description
[here](https://www.census.gov/programs-surveys/geography/guidance/geo-identifiers.html).

Based on this [page](https://mcdc.missouri.edu/geography/sumlevs/), we
have the following description.

-   A single code — the *geoID* — identifies every geographic entity in
    census data products. The geoID (sometimes called *geocode*,
    *areaID*, etc.) may be up to 40 characters long. Longer codes
    usually represent smaller entities. GeoIDs have a specific format
    for all areas:

    -   Characters 1-3: summary level (see below)

    -   Characters 4-5: geographic component (allows division of a
        geographic unit by certain tests, such as rural/urban)

    -   Characters 6-7: always “US”

    -   The remaining characters provide a unique identifier within the
        specified summary level. For states and smaller entities, the
        first two characters are the state’s code.

-   For example: Columbia, Missouri’s geoID is **16000US2915670**, which
    can be interpreted as:

    -   Summary level: 160 (place)

    -   Geographic component: 00 (i.e., total)

    -   State: 29 (Missouri)

    -   Place code: 15670 (Columbia)

##### ANSI / FIPS

The American National Standards Institute (ANSI) is the sole U.S.
representative and dues-paying member of the International Organization
for Standardization (ISO).

American National Standards Institute codes (ANSI codes) are
standardized numeric or alphabetic codes issued by the American National
Standards Institute (ANSI) to ensure uniform identification of
geographic entities through all federal government agencies. The
American National Standards Institute (ANSI) has taken over the
management of geographic codes from the National Institute of Standards
and Technology (NIST). Under NIST, the codes adhered to the Federal
Information Processing Standards (FIPS). ANSI now issues two types of
codes. They continue to issue the commonly used FIPS codes, although the
acronym has now changed to Federal Information Processing Series,
because it is no longer considered the standard.

#### 

Source references

##### Delineation files that define CBSAs and metro divisions

Census Bureau provides delineation files
[here](https://www.census.gov/geographies/reference-files/time-series/demo/metro-micro/delineation-files.html).
The March 2020 version of the “Core based statistical areas (CBSAs),
metropolitan divisions, and combined statistical areas (CSAs)” file was
downloaded to use for definitions of CBSA. (list1\_2020.csv)

##### Gazetteer files that provide codes for CBSAs and counties

Downloads from this
[page,](https://www.census.gov/geographies/reference-files/time-series/geo/gazetteer-files.html)
and file record layouts from this
[page](https://www.census.gov/programs-surveys/geography/technical-documentation/records-layout/gaz-record-layouts.html).
The 2020 versions of the following files were used:

-   Core Based Statistical Areas (2020\_Gaz\_cbsa\_national.txt)

-   Counties (2020\_Gaz\_counties\_national.txt)

##### Tidycensus package

Downloaded the fips\_codes data frame from the Tidycensus package
(fips\_codes\_tidycensus\_2021-03).
