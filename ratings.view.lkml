view: ratings {
  sql_table_name: fedexdb.ratings ;;

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
    sql: CAST(${TABLE}.date AS TIMESTAMP) ;;
  }

  dimension: deliveryid {
    type: string
    sql: ${TABLE}.deliveryid ;;
  }

  dimension: drop {
    type: string
    sql: ${TABLE}.drop ;;
  }

  dimension: pickup {
    type: string
    sql: ${TABLE}.pickup ;;
  }

  dimension: ratings {
    type: number
    sql: ${TABLE}.ratings ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
