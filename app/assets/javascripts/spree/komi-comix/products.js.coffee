$ ->
  $('.panel-collapse.collapse input:checkbox').on 'click', (e) ->
    container = $(this).closest('.list-group.copy')
    selectors = container.find('input:checkbox:checked')

    i = 0
    ids = []
    while i < selectors.length
      ids.push(selectors[i].value)
      i++

    $.ajax '/products',
      data: {
              taxons: ids,
              sort_by: $('#sort_by1').val(),
              keywords: $('#keywords1').val(),
              page: $('#page1').val()
            }
      type: 'GET'

    if ids.lenght > 1
      $('#taxons').val($.param(ids))
    else
      $('#taxons').val(ids)
    return



  $('#cart_modal').on 'show.bs.modal', (event) ->

    button = $(event.relatedTarget)


    # product = button.data('product')

    # modal = $(this)
    # modal.find('.product_name').text product.name

    return
