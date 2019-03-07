view: tbl_fed_ex_ratings {
  sql_table_name: fedexdb.tblFedExRatings ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: d_location {
    type: string
    sql: ${TABLE}.dLocation ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: p_location {
    type: string
    sql: ${TABLE}.pLocation ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
