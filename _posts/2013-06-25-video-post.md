---
layout: post
title: "A Post with a Video"
author: mattewwithanm
---

<iframe width="560" height="315" src="http://www.youtube.com/embed/SqYiglufb8Y"> </iframe>

Video embeds are responsive and scale with the width of the main content block with the help of [FitVids](http://fitvidsjs.com/).

Not sure if this only effects Kramdown or if it's an issue with Markdown in general. But adding YouTube video embeds causes errors when building your Jekyll site. To fix add a space between the `<iframe>` tags and remove `allowfullscreen`. Example below:

{% highlight html %}
<iframe width="560" height="315" src="http://www.youtube.com/embed/PWf4WUoMXwg"> </iframe>
{% endhighlight %}