view: data_elements {
  sql_table_name: ValidationSwiss.DataElements ;;

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: feature_description {
    type: string
    sql: ${TABLE}.feature_description ;;
    link: {
      label: "Tolerances"
      url: "http://localhost:9999/embed/dashboards/cda_securities::cda_securities_tolerances?feature_description={{ value }}"
    }
    link: {
      label: "Business Rules"
      url: "http://localhost:9999/embed/dashboards/cda_securities::cda_securities_business_rules?rule_type=&feature_description={{ value }}"
    }
    link: {
      label: "Data Elements"
      url: "http://localhost:9999/embed/dashboards/cda_securities::cda_securities_data_elements?feature_description={{ value }}"
    }
  }

  dimension: feature_name {
    type: string
    sql: ${TABLE}.feature_name ;;
  }

  measure: count {
    type: count
    drill_fields: [feature_name]
  }
}
