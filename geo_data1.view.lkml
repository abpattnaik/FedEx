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

  dimension: plong_numeric {
    type: number
    hidden: yes
    sql: case
           when REGEXP_CONTAINS(${plong}, r"(\s+[nN]$)") then cast(REGEXP_REPLACE(${plong}, '[^0-9/. ]','') as numeric)
           when REGEXP_CONTAINS(${plong}, r"(\s+[sS]$)") then cast(REGEXP_REPLACE(${plong}, '[^0-9/. ]','') as numeric) * -1
           ELSE null
         end ;;
  }

  dimension: plat_numeric {
    type: number
    hidden: yes
    sql: case
           when REGEXP_CONTAINS(${plat}, r"(\s+[eE]$)") then cast(REGEXP_REPLACE(${plat}, '[^0-9/. ]','') as numeric)
           when REGEXP_CONTAINS(${plat}, r"(\s+[wW]$)") then cast(REGEXP_REPLACE(${plat}, '[^0-9/. ]','') as numeric) * -1
           ELSE null
         end ;;
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

  dimension: dlong_numeric {
    type: number
    hidden: yes
    sql: case
           when REGEXP_CONTAINS(${dlong}, r"(\s+[nN]$)") then cast(REGEXP_REPLACE(${dlong}, '[^0-9/. ]','') as numeric)
           when REGEXP_CONTAINS(${dlong}, r"(\s+[sS]$)") then cast(REGEXP_REPLACE(${dlong}, '[^0-9/. ]','') as numeric) * -1
           ELSE null
         end ;;
  }

  dimension: dlat_numeric {
    type: number
    hidden: yes
    sql: case
           when REGEXP_CONTAINS(${dlat}, r"(\s+[eE]$)") then cast(REGEXP_REPLACE(${dlat}, '[^0-9/. ]','') as numeric)
           when REGEXP_CONTAINS(${dlat}, r"(\s+[wW]$)") then cast(REGEXP_REPLACE(${dlat}, '[^0-9/. ]','') as numeric) * -1
           ELSE null
         end ;;
  }

  dimension: Pickup {
    type: location
    sql_latitude: ${plong_numeric} ;;
    sql_longitude: ${plat_numeric} ;;
  }

  dimension: Drop {
    type: location
    sql_latitude: ${dlong_numeric} ;;
    sql_longitude: ${dlat_numeric} ;;
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
