jQuery ->
  new Watercolors()

class Watercolors
  constructor: ->
    @init_sortable()


  init_sortable: =>
    $('#watercolors_sortable').sortable
      axis: 'y'
      handle: '.handle'
      update: ->
        $.post($(this).data('update-url'), $(this).sortable('serialize'))
        