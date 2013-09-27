Labs Jekyll Theme
================

A simple, content and code friendly blog for multiple others and supports external posts.

hzdg.github.io/labs-jekyll-theme
================

Development
-----------

To work on the site, you'll need [node] and [Ruby] installed. It's recommended
that you use [bundler] to manage your Ruby dependencies. With these installed:

1. `cd` into the project directory
2. Install the Ruby build dependencies: `bundle install`
3. Install the JavaScript build dependencies: `npm install`
4. Install Front End dependecies: `bower install`
5. Add "node_modules/.bin" to your PATH environment variable: ``export PATH=`pwd`/node_modules/.bin:$PATH``

At that point, you can run `grunt serve` which will concurrently run `grunt-jekyll` the static site generator and `grunt-watch` to compile your LESS and CoffeeScript while you edit them.

[node]: http://nodejs.org
[ruby]: http://www.ruby-lang.org
[bundler]: http://bundler.io

Post Authorship
-----------
Default yaml front header should look like the this:

``` yaml
---
layout: post
title: "Blog Post Title"
author: mattewwithanm
---
```

If this post/link references an external source you can declare two optional values for the source and url
``` yaml
source: github
link: https://matthewwithanm.github.io/jquery-icbiacontrol
```

valid options include :
- `coderwall`
- `github`

To Do: Write css rules to support external resources such as [speakerdeck](https://speakerdeck.com/)
