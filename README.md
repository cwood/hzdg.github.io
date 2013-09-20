Labs Jekyll Theme
================

A simple, content and code friendly blog for multiple others and supports external posts.

hzdg.github.io/labs-jekyll-theme
================

Development
-----------

To work on the site, you'll need to do the following:

1. `cd` into the project directory
2. Install the build dependencies: `npm install`
3. Install Front End dependecies: `bower install`
3. Add "node_modules/.bin" to your PATH environment variable: ``export PATH=`pwd`/node_modules/.bin:$PATH``

At that point, you can run `grunt serve` which will concurrently run `grunt-jekyll` the static site generator and `grunt-watch` to compile your LESS and CoffeeScript while you edit them.
