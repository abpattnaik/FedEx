view: ratings_tmp {
  sql_table_name: fedexdb.Ratings_tmp ;;

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: int64_field_4 {
    type: number
    sql: ${TABLE}.int64_field_4 ;;
  }

  dimension: string_field_2 {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: string_field_3 {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }

  dimension_group: timestamp_field_1 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
