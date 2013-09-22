define (require) ->
  require 'modernizr'
  $ = require 'jquery'
  scrollMonitor = require 'scrollMonitor'

  aside = $("main + aside")
  html = $('html')

  asideWatcher = scrollMonitor.create( aside )
  asideWatcher.stateChange ->
    asideOffset = $(aside).offset()
    html.toggleClass "fixed", @isAboveViewport
    console.log asideOffset
    aside.css(
      left: asideOffset.left
      right: 'auto'
    )
