view: tbl_ratings_geo_details {
  sql_table_name: fedexdb.tblRatingsGeoDetails ;;

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

  dimension: dlat {
    type: string
    sql: ${TABLE}.dlat ;;
  }

  dimension: dlocation {
    type: string
    sql: ${TABLE}.dlocation ;;
  }

  dimension: dlong {
    type: string
    sql: ${TABLE}.dlong ;;
  }

  dimension: plat {
    type: string
    sql: ${TABLE}.plat ;;
  }

  dimension: plocation {
    type: string
    sql: ${TABLE}.plocation ;;
  }

  dimension: plong {
    type: string
    sql: ${TABLE}.plong ;;
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
