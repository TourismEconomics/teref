#' Country codes
#'
#' Country names and codes across sources.
#'
#' @format A tibble:
#' \describe{
#' \item{country_name}{Straightforward name for country}
#' \item{ctry_sh}{Three-letter, lower case short code for country}
#' \item{iso3166_1a3}{The ISO 3166 code for the country. This is the three-letter code (alpha-3). For further details, see \url{https://www.iso.org/iso-3166-country-codes.html}}
#' \item{iso3166_snamelc}{The ISO 3166 English short name}
#' \item{oegm_ctry_name_old}{Oxford Economics global model country name, from the old model interface}
#' \item{oegm_ctry_name}{Oxford Economics global model country name}
#' \item{oegm_ctry_twoletter}{Oxford Economics global model two-letter code, from old model interface}
#' \item{oegm_ctry_threeletter}{Oxford Economics global model three-letter code}
#' \item{oegc_ctry_name}{Oxford Economics Global Cities country name}
#' \item{oegc_loc_code}{Oxford Economics Global Cities country location code}
#' \item{oegm_region_primary}{Oxford Economics global model primary region}
#' \item{oegts_country_name}{Oxford Economics Global Travel Service country name}
#' \item{oegts_region_midlev}{Oxford Economics Global Travel Service mid-level region}
#' \item{oegts_region_highlev}{Oxford Economics Global Travel Service high-level region. These include: Europe, Africa and Middle East, Americas, Asia Pacific, and NA.}
#' \item{oegts_loc_code}{Oxford Economics Global Travel Service location (country) code}
#' \item{internet_tld}{Country code top-level domain. Most tld codes are identical to ISO 3166-1 codes, with some notable exceptions. For further details, see \url{https://en.wikipedia.org/wiki/Country_code_top-level_domain}}
#' \item{oag_country_name}{Country names used by OAG}}
#' \item{oag_country_code}{Country codes used by OAG. Better to use this for joins rather than OAG country codes.}}
#' \item{note}{Note}}
"cb_ctry"

#' City codes
#'
#' City names and codes across sources.
#'
#' @format A tibble:
#' \describe{
#' \item{mkt_name}{Straightforward name for city}
#' \item{mkt_sh}{Five-letter code for market}
#' \item{country_name}{Straightforward name for country. Useful to join with ctry_code_book. Note: The country_name for Hong Kong is Hong Kong to help differentiate it.}
#' \item{oegc_name}{Oxford Economics Global Cities city name}
#' \item{oegc_ctry_name}{Oxford Economics Global Cities country name}
#' \item{oegc_loc_code}{Oxford Economics Global Cities location code}
#' \item{mkt_geocode_friendly}{Market name that works well in geocoding scripts, such as Google API. NA for most markets.}
#' \item{oe_gct_name}{Oxford Economics Global City Travel city name}
#' \item{oe_gct_location_code}{Oxford Economics Global City Travel location code}
#' \item{oe_nacities_name}{Oxford Economics North American Cities name}
#' \item{oe_nacities_location_code}{Oxford Economics Global City Travel location code}
#' \item{note}{Note}}
"cb_city"

#' Country codes for Global City Travel data
#'
#' The origin country codes and regions used in Global City Travel
#'
#' Hints: Filtering geotype to country and partial region may make sense. Alternatively,
#' filtering to region or global.
#'
#'
#'
#' @format A tibble:
#' \describe{
#' \item{orig_ctry_code}{Three-letter upper-case codes used in variables in GCT.
#' Populated for all rows.}
#' \item{geo_name}{Straightforward name for the geograph. Populated for all rows.}
#' \item{country_name}{Straightforward name for country. Useful to join with
#' ctry_code_book. Populated for countries only.}
#' \item{oegct_country_name}{Country name used in GCT descriptions}
#' \item{geo_type}{Type of geography (global, continent (only Africa), region,
#' partial region, country). Africa is categorized as a continent to help show
#' that it shouldn't be summed with the other regions, as there is also a North
#' Africa and Sub-Saharan Africa. The partial regions are rows such as "Rest of
#' Oceania" that are similar in a sense to countries.}
#' \item{oegct_region_midlev}{Mid-level regions used in GCT}
#' \item{oegct_region_highlev}{High-level regions used in GCT}}
"cb_ctry_oegct"

#' Variable codes for Global Cities data
#'
#' Short, lower-case variable codes to use with Global Cities data.
#'
#' @format A tibble:
#' \describe{
#' \item{var}{Short, lower-case variable code (no special chracters)}
#' \item{oe_var}{Variable code in database (includes special characters such as $)}
#' \item{sh_description}{Short description of indicator}
#' \item{oe_description}{Description of indicator in database}}
"cb_var_oegc"


#' Variable codes for Global City Travel data
#'
#' Short, lower-case variable codes to use with Global City Travel data.
#'
#' @format A tibble:
#' \describe{
#' \item{var}{Short, lower-case variable code (no special chracters)}
#' \item{oe_var}{Variable code in database (includes special characters such as $)}
#' \item{sh_description}{Short description of indicator}
#' \item{oe_description}{Description of indicator in database}
#' \item{var_type}{The var column is not unique. It is necessary to filter to
#' the primary var_type. This is because different codes are used for certain totals in the GCT database.}
#' \item{note}{Reminder of differences for US}}
"cb_var_oegct"


#' Region codes for Global Travel Service data
#'
#' Short, lower-case variable codes to use with Global Travel Service data.
#'
#' @format A tibble:
#' \describe{
#' \item{geoname}{Name of the region in GTS)}
#' \item{category}{Indicates whether it is a highlev or midlev aggregate in GTS, or a
#' continent or global. Not elsewhere specified is categorized as a midlev region. Africa
#' is categorized as continent, because it shouldn't be summed with the other
#' highlev or midlev regions.)}
#' \item{oegts_loc_code}{Three-letter location code used in GTS database}}
"cb_regions_oegts"

#' Variable codes for Global Travel Service country metrics
#'
#' Short, lower-case variable codes to use with Global Travel Service country metrics. The
#' variables in the "Country Metrics" section of the database do not have origin-specific
#' data, and are instead indicators about the location country overall.
#'
#' @format A tibble:
#' \describe{
#' \item{var}{Short, lower-case variable code (no special chracters)}
#' \item{oe_var}{Variable code in database (includes special characters such as $)}
#' \item{sh_description}{Short description of indicator}
#' \item{oe_description}{Description of indicator in database}}
"cb_var_oegts_cmetric"


#' Variable codes for STR metrics
#'
#' Short, lower-case variable codes to use with STR concepts.
#'
#' @format A tibble:
#' \describe{
#' \item{var}{Short, lower-case variable code (no special chracters)}
#' \item{description}{Description of indicator)}}
"cb_var_str"

#' Daily dates corresponding to dates in 2019
#'
#' For each day in several years, this table shows the comparable date in 2019.
#'
#' @format A tibble:
#' \describe{
#' \item{date}{Date}
#' \item{date_2019}{Corresponding date in 2019)}}
"cb_daily_date_2019"

