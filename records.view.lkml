view: records {
  sql_table_name: ValidationSwiss.Records ;;

  dimension: bool_tick {
    sql: ('http://localhost:9999/images/clareti/bool_tick.gif')
  }

  dimension: bool_cross {
    sql: ('http://localhost:9999/images/clareti/bool_cross.gif')
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  #dimension: all_okay {
  #  type: string
  #  sql: ${TABLE}.ALL_Okay ;;
  #}

  dimension: all_okay {
    sql: ${bool_tick}
    html: <img src="{{ all_okay }}"/>
  }

  dimension: all_okay_display {
    type: string
    sql: ${TABLE}.ALL_Okay_DISPLAY ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.ASSET_ID ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: country_exchange {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE ;;
  }

  dimension: country_exchange_check {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Check ;;
  }

  dimension: country_exchange_complete {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Complete ;;
  }

  dimension: country_exchange_conform {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Conform ;;
  }

  dimension: country_exchange_okay {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Okay ;;
  }

  dimension: country_exchange_timely {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Timely ;;
  }

  dimension: country_exchange_unique {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Unique ;;
  }

  dimension: country_exchange_valid {
    type: string
    sql: ${TABLE}.COUNTRY_EXCHANGE_Valid ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: currency_check {
    type: string
    sql: ${TABLE}.CURRENCY_Check ;;
  }

  dimension: currency_complete {
    type: string
    sql: ${TABLE}.CURRENCY_Complete ;;
  }

  dimension: currency_conform {
    type: string
    sql: ${TABLE}.CURRENCY_Conform ;;
  }

  dimension: currency_okay {
    type: string
    sql: ${TABLE}.CURRENCY_Okay ;;
  }

  dimension: currency_timely {
    type: string
    sql: ${TABLE}.CURRENCY_Timely ;;
  }

  dimension: currency_unique {
    type: string
    sql: ${TABLE}.CURRENCY_Unique ;;
  }

  dimension: currency_valid {
    type: string
    sql: ${TABLE}.CURRENCY_Valid ;;
  }

  dimension: data_approved {
    type: string
    sql: ${TABLE}.DATA_APPROVED ;;
  }

  dimension: data_approved_check {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Check ;;
  }

  dimension: data_approved_complete {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Complete ;;
  }

  dimension: data_approved_conform {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Conform ;;
  }

  dimension: data_approved_okay {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Okay ;;
  }

  dimension: data_approved_timely {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Timely ;;
  }

  dimension: data_approved_unique {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Unique ;;
  }

  dimension: data_approved_valid {
    type: string
    sql: ${TABLE}.DATA_APPROVED_Valid ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: days_updated {
    type: number
    sql: ${TABLE}.DAYS_UPDATED ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: isin_check {
    type: string
    sql: ${TABLE}.ISIN_Check ;;
  }

  dimension: isin_complete {
    type: string
    sql: ${TABLE}.ISIN_Complete ;;
  }

  dimension: isin_conform {
    type: string
    sql: ${TABLE}.ISIN_Conform ;;
  }

  dimension: isin_okay {
    type: string
    sql: ${TABLE}.ISIN_Okay ;;
  }

  dimension: isin_timely {
    type: string
    sql: ${TABLE}.ISIN_Timely ;;
  }

  dimension: isin_unique {
    type: string
    sql: ${TABLE}.ISIN_Unique ;;
  }

  dimension: isin_valid {
    type: string
    sql: ${TABLE}.ISIN_Valid ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: sec_name {
    type: string
    sql: ${TABLE}.SEC_NAME ;;
  }

  dimension: sec_name_check {
    type: string
    sql: ${TABLE}.SEC_NAME_Check ;;
  }

  dimension: sec_name_complete {
    type: string
    sql: ${TABLE}.SEC_NAME_Complete ;;
  }

  dimension: sec_name_conform {
    type: string
    sql: ${TABLE}.SEC_NAME_Conform ;;
  }

  dimension: sec_name_okay {
    type: string
    sql: ${TABLE}.SEC_NAME_Okay ;;
  }

  dimension: sec_name_timely {
    type: string
    sql: ${TABLE}.SEC_NAME_Timely ;;
  }

  dimension: sec_name_unique {
    type: string
    sql: ${TABLE}.SEC_NAME_Unique ;;
  }

  dimension: sec_name_valid {
    type: string
    sql: ${TABLE}.SEC_NAME_Valid ;;
  }

  dimension: security_type {
    type: string
    sql: ${TABLE}.SECURITY_TYPE ;;
  }

  dimension: security_type_check {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Check ;;
  }

  dimension: security_type_complete {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Complete ;;
  }

  dimension: security_type_conform {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Conform ;;
  }

  dimension: security_type_okay {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Okay ;;
  }

  dimension: security_type_timely {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Timely ;;
  }

  dimension: security_type_unique {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Unique ;;
  }

  dimension: security_type_valid {
    type: string
    sql: ${TABLE}.SECURITY_TYPE_Valid ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension_group: today {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.TODAY_DATE ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.UPDATE_DATE ;;
  }

  dimension: update_date_check {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Check ;;
  }

  dimension: update_date_complete {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Complete ;;
  }

  dimension: update_date_conform {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Conform ;;
  }

  dimension: update_date_okay {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Okay ;;
  }

  dimension: update_date_timely {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Timely ;;
  }

  dimension: update_date_unique {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Unique ;;
  }

  dimension: update_date_valid {
    type: string
    sql: ${TABLE}.UPDATE_DATE_Valid ;;
  }

  measure: count {
    type: count
    drill_fields: [sec_name]
  }
}
