require.config
  baseUrl: '/assets/'
  waitSeconds: 200
  paths:
    modernizr: 'modernizr/modernizr'
    scrollMonitor: 'scrollMonitor/scrollMonitor'
    jquery: 'jquery/jquery'

  shim:
  	scrollMonitor: ['jquery']
