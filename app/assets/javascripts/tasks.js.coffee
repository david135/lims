jQuery ->
  $('#tasks').dataTable
    columnDefs: [
                  { orderable: false, targets: [6, 7] },
                ]

jQuery ->
  $('#event_tasks').dataTable
    ## https://datatables.net/examples/basic_init/scroll_y_dynamic.html
    scrollY: '20vh',
    columnDefs: [
                  { orderable: false, targets: [5, 6] },
                ]
