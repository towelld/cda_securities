- dashboard: cda_securities_highlights
  title: Securities Highlights
  layout: static
  width: 1500
  tile_size: 50
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: feature_description
    type: field_filter
    model: cda_securities
    explore: data_elements
    field: data_elements.feature_description

  elements:

  - name: cda_securities_highlights
    title: Highlights
    left: 0
    top: 0
    height: 5
    width: 30
    type: looker_donut_multiples
    model: cda_securities
    explore: summary_cda
    dimensions: [data_elements_rule_types.rule_type]
    measures: [summary_cda.passed, summary_cda.failed]
    filter_expression: "${summary_cda.rule_type_id}=1 OR ${summary_cda.rule_type_id}=6 OR ${summary_cda.rule_type_id}=11"
    sorts: [summary_cda.passed desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_value_labels: false
    font_size: 25
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hide_legend: true
    series_colors:
      summary_cda.passed: "#92c26e"
      summary_cda.failed: "#df5555"
    charts_across: 3
    series_labels:
      summary_cda.passed: Passed
      summary_cda.failed: Failed


  - name: cda_securities_highlights_green
    title: Untitled Visualization
    type: single_value
    left: 0
    top: 5
    height: 2
    width: 10
    model: cda_securities
    explore: v_cdahighlights_summary
    dimensions: [v_cdahighlights_summary.rag]
    measures: [v_cdahighlights_summary.sum_rag_count]
    filters:
      v_cdahighlights_summary.rag: GREEN
      v_cdahighlights_summary.rule_type: Overall
    sorts: [v_cdahighlights_summary.sum_rag_count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    custom_color_enabled: true
    custom_color: "#92c26e"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: none
    label_type: labPer
    series_types: {}
    series_colors:
      GREEN: "#92c26e"
      RED: "#df5555"
      AMBER: "#eaa153"
      v_cdahighlights_summary.sum_rag_count: "#92c26e"
    hide_legend: true
    single_value_title: GREEN

  - name: cda_securities_highlights_amber
    title: Untitled Visualization
    type: single_value
    left: 10
    top: 5
    height: 2
    width: 10
    model: cda_securities
    explore: v_cdahighlights_summary
    dimensions: [v_cdahighlights_summary.rag]
    measures: [v_cdahighlights_summary.sum_rag_count]
    filters:
      v_cdahighlights_summary.rag: AMBER
      v_cdahighlights_summary.rule_type: Overall
    sorts: [v_cdahighlights_summary.sum_rag_count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    custom_color_enabled: true
    custom_color: "#eaa153"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: none
    label_type: labPer
    series_types: {}
    series_colors:
      GREEN: "#92c26e"
      RED: "#df5555"
      AMBER: "#eaa153"
      v_cdahighlights_summary.sum_rag_count: "#eaa153"
    hide_legend: true
    single_value_title: AMBER

  - name: cda_securities_highlights_red
    title: Untitled Visualization
    type: single_value
    left: 20
    top: 5
    height: 2
    width: 10
    model: cda_securities
    explore: v_cdahighlights_summary
    dimensions: [v_cdahighlights_summary.rag]
    measures: [v_cdahighlights_summary.sum_rag_count]
    filters:
      v_cdahighlights_summary.rag: RED
      v_cdahighlights_summary.rule_type: Overall
    sorts: [v_cdahighlights_summary.sum_rag_count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    custom_color_enabled: true
    custom_color: "#df5555"
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: none
    label_type: labPer
    series_types: {}
    series_colors:
      GREEN: "#92c26e"
      RED: "#df5555"
      AMBER: "#eaa153"
      v_cdahighlights_summary.sum_rag_count: "#df5555"
    hide_legend: true
    single_value_title: RED

  - name: cda_securities_highlights_rags
    title: Red and Amber Data Elements
    type: table
    left: 0
    top: 7
    height: 10
    width: 30
    model: cda_securities
    explore: v_cdahighlights_rags
    dimensions: [data_elements.feature_description, v_cdahighlights_rags.data_check, v_cdahighlights_rags.rag]
    listen:
      feature_description: data_elements.feature_description
    sorts: [v_cdahighlights_rags.data_element]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
