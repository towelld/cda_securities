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
  - name: security_type
    label: 'Security Type'
    type: field_filter
    model: cda_securities
    explore: summary_cda
    field: summary_cda.security_type
  - name: country_exchange
    label: 'Country Exchange'
    type: field_filter
    model: cda_securities
    explore: summary_cda
    field: summary_cda.country_exchange
  - name: data_approved
    label: 'Data Approved'
    type: field_filter
    model: cda_securities
    explore: summary_cda
    field: summary_cda.data_approved

  elements:

  - name: cda_securities_highlights
    title: Highlights
    left: 0
    top: 0
    height: 10
    width: 30
    type: looker_donut_multiples
    model: cda_securities
    explore: summary_cda
    dimensions: [data_elements_rule_types.rule_type]
    measures: [summary_cda.passed, summary_cda.failed]
    filter_expression: "${summary_cda.rule_type_id}=1 OR ${summary_cda.rule_type_id}=6 OR ${summary_cda.rule_type_id}=11"
    listen:
      security_type: summary_cda.security_type
      country_exchange: summary_cda.country_exchange
      data_approved: summary_cda.data_approved
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
