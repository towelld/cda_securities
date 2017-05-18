view: v_cdahighlights_rags {
  sql_table_name: ValidationSwiss.vCDAHighlightsRags ;;

  dimension: data_check {
    type: string
    sql: ${TABLE}.data_check ;;
  }

  dimension: data_element {
    type: string
    sql: ${TABLE}.data_element ;;
  }

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: rag {
    type: string
    sql: ${TABLE}.RAG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
