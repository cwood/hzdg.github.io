(function() {
  define(function(require) {
    var $, $aside, $html, asideWatcher, scrollMonitor;
    require('modernizr');
    $ = require('jquery');
    scrollMonitor = require('scrollMonitor');
    $aside = $('aside');
    $html = $('html');
    asideWatcher = scrollMonitor.create($aside);
    asideWatcher.stateChange(function() {
      var asideOffset;
      asideOffset = $aside.offset();
      if ($html.width() > 810) {
        $html.toggleClass("fixed", this.isAboveViewport);
        return $aside.css({
          left: asideOffset.left,
          right: 'auto'
        });
      } else {
        return $aside.removeAttr('style');
      }
    });
    return $(document).ready(function() {
      var $menuToggle;
      $menuToggle = $('.icon-menu');
      return $menuToggle.click(function(event) {
        event.preventDefault();
        return $html.toggleClass('open-nav');
      });
    });
  });

}).call(this);
