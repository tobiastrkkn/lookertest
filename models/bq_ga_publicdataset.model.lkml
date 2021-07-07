connection: "bq_public_ga_dataset"

# include all the views
include: "/views/**/*.view"

datagroup: bq_ga_publicdataset_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bq_ga_publicdataset_default_datagroup
