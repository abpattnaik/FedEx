connection: "fedex_demo"

# include all the views
include: "*.view"

datagroup: fedex_one_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fedex_one_default_datagroup

explore: ratings {}

explore: ratings_tmp {}

explore: tbl_fed_ex_ratings {}

explore: tbl_ratings {}

explore: tbl_ratings_geo {}

explore: tbl_ratings_geo_details {}

explore: test {}
