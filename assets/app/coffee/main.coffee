define (require) ->
  require 'modernizr'
  $ = require 'jquery'
  scrollMonitor = require 'scrollMonitor'

  $aside = $ 'aside'
  $html = $ 'html'

  asideWatcher = scrollMonitor.create( $aside )
  asideWatcher.stateChange ->
    asideOffset = $aside.offset()
    if $html.width() > 810
      $html.toggleClass "fixed", @isAboveViewport
      $aside.css(
        left: asideOffset.left
        right: 'auto'
      )
    else
      $aside.removeAttr 'style'

  $(document).ready ->
    $menuToggle = $ '.icon-menu'

    $menuToggle.click (event) ->
      event.preventDefault()
      $html.toggleClass 'open-nav'
