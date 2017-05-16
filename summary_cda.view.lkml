view: summary_cda {
  sql_table_name: ValidationSwiss.SummaryCDA ;;

  dimension: data_element {
    type: string
    sql: ${TABLE}.data_element ;;
  }

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rule_type_count {
    type: number
    sql: ${TABLE}.rule_type_count ;;
  }

  dimension: rule_type_id {
    type: number
    sql: ${TABLE}.rule_type_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  measure: count {
    type: count
    drill_fields: [records*]
  }
  measure: sum_total {
    type: sum
    sql: ${total};;
    drill_fields: [records*]
  }
  measure: sum_rule {
    type: sum
    sql: ${rule_type_count};;
    drill_fields: [records*]
  }
  measure: red {
    type: number
    sql: case when ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0<${summary_cda_tolerance.rag_upper} then ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0 else 0 end  ;;
    value_format_name: percent_2
    drill_fields: [records*]
  }
  measure: amber {
    type: number
    sql: case when ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0>=${summary_cda_tolerance.rag_lower} then case when ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0<${summary_cda_tolerance.rag_upper} then ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0 else 0 end else 0 end  ;;
    value_format_name: percent_2
    drill_fields: [records*]
  }
  measure: green {
    type: number
    sql: case when ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0>=${summary_cda_tolerance.rag_upper} then ${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0 else 0 end  ;;
    value_format_name: percent_2
    drill_fields: [records*]
  }
  measure: total100 {
    type: number
    sql: 1-(${summary_cda.sum_rule}*1.0/${summary_cda.sum_total}*1.0)  ;;
    value_format_name: percent_2
    drill_fields: [records*]
  }
  set: records {
    fields: [records.int_boajcd,records.int_boafcd,records.int_boakcd,records.int_boexst,records.int_bojdtx,records.int_boabcd,records.int_bocnnb,records.int_bocfc2,records.int_boernr,records.int_a7a8st,records.int_a7ammd,records.int_bpbbmd,records.int_loq4ns,records.int_swjpmd,records.int_swjqmd,records.int_swjrmd,records.int_swunn1]
  }
  set: checks {
    fields: [records.int_bojdtx_complete,records.int_bojdtx_conform,records.int_bojdtx_unique,records.int_bojdtx_valid]
  }

}
