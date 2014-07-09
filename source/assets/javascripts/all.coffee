//= require pace/pace.min
//= require modernizr/modernizr
//= require turbolinks
//= require jquery/dist/jquery
//= require jquery-ui/ui/minified/jquery.ui.core.min
//= require jquery-ui/ui/minified/jquery.ui.widget.min
//= require jquery-ui/ui/minified/jquery.ui.accordion.min
//= require jquery-ui/ui/minified/jquery.ui.tooltip.min
//= require jquery-ui/ui/minified/jquery.ui.effect.min
//= require jquery-ui/ui/minified/jquery.ui.effect-fade.min
//= require jquery-ui/ui/minified/jquery.ui.effect-slide.min
//= require jquery-ui/ui/minified/jquery.ui.position.min
//= require_self

$(document).on 'page:receive', ->
  Pace.restart()

$(document).on 'ready page:load', ->
  $('#accordion').accordion
    active: false
    animate: 100
    collapsible: true
    heightStyle: 'content'
    activate: (e, ui) ->
      $(document).tooltip
        position:
          my: 'bottom-5'
          collision: 'flip fit'
        track: true
      return

  $('form').on 'submit', ->
    false