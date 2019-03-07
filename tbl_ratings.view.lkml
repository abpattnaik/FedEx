view: tbl_ratings {
  sql_table_name: fedexdb.tblRatings ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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
    sql: ${TABLE}.date ;;
  }

  dimension: dlocation {
    type: string
    sql: ${TABLE}.dlocation ;;
  }

  dimension: plocation {
    type: string
    sql: ${TABLE}.plocation ;;
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
