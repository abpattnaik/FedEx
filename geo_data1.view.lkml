view: geo_data1 {
  derived_table: {
    sql: SELECT * FROM `fedexdnapocvk.fedexdb.tblRatingsGeoDetails`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: date {
    type: time
    sql: ${TABLE}.date ;;
  }

  dimension: plocation {
    type: string
    sql: ${TABLE}.plocation ;;
  }

  dimension: plong {
    type: string
    sql: ${TABLE}.plong ;;
  }

  dimension: plat {
    type: string
    sql: ${TABLE}.plat ;;
  }

  dimension: dlocation {
    type: string
    sql: ${TABLE}.dlocation ;;
  }

  dimension: dlong {
    type: string
    sql: ${TABLE}.dlong ;;
  }

  dimension: dlat {
    type: string
    sql: ${TABLE}.dlat ;;
  }

  dimension: Pickup {
    type: location
    sql_latitude: ${TABLE}.plong;;
    sql_longitude: ${TABLE}.plat ;;
  }

  dimension: Drop {
    type: location
    sql_latitude: ${TABLE}.dlong;;
    sql_longitude: ${TABLE}.dlat ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  set: detail {
    fields: [
      id,
      date_time,
      plocation,
      plong,
      plat,
      dlocation,
      dlong,
      dlat,
      rating
    ]
  }
}
