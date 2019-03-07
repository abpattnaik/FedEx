view: test {
  sql_table_name: fedexdb.test ;;

  dimension: c1 {
    type: string
    sql: ${TABLE}.c1 ;;
  }

  dimension: c2 {
    type: string
    sql: ${TABLE}.c2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
