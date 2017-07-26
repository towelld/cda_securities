- dashboard: cda_securities_compare
  title: Securities Compare
  layout: static
  width: 1500
  tile_size: 50
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  elements:

  - name: cda_securities_compare_source_1
    title: Source 1
    type: looker_column
    left: 0
    top: 0
    height: 15
    width: 60
    model: cda_securities
    explore: summary_cda
    measures: [summary_cda.passed, summary_cda.failed]
    filters:
      summary_cda.country_exchange: ''
      summary_cda.data_approved: ''
      summary_cda.security_type: ''
    show_filters_bar: true
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    hide_legend: false
    series_colors:
      summary_cda.passed: "#92c26e"
      summary_cda.failed: "#df5555"
