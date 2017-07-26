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
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
    - name: security_type_1
      label: 'Source 1 - Security Type'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.security_type
    - name: country_exchange_1
      label: 'Source 1 - Country Exchange'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.country_exchange
    - name: data_approved_1
      label: 'Source 1 - Data Approved'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.data_approved
    - name: security_type_2
      label: 'Source 2 - Security Type'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.security_type
    - name: country_exchange_2
      label: 'Source 2 - Country Exchange'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.country_exchange
    - name: data_approved_2
      label: 'Source 2 - Data Approved'
      type: field_filter
      model: cda_securities
      explore: summary_cda
      field: summary_cda.data_approved

  elements:

  - name: cda_securities_compare_source_1
    title: Source 1
    type: looker_column
    left: 0
    top: 0
    height: 15
    width: 15
    model: cda_securities
    explore: summary_cda
    measures: [summary_cda.passed, summary_cda.failed]
    listen:
      security_type_1: summary_cda.security_type
      country_exchange_1: summary_cda.country_exchange
      data_approved_1: summary_cda.data_approved
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


  - name: cda_securities_compare_source_2
    title: Source 1
    type: looker_column
    left: 15
    top: 0
    height: 15
    width: 15
    model: cda_securities
    explore: summary_cda
    measures: [summary_cda.passed, summary_cda.failed]
    listen:
      security_type_2: summary_cda.security_type
      country_exchange_2: summary_cda.country_exchange
      data_approved_2: summary_cda.data_approved
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
