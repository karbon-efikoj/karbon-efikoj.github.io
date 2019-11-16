---
layout: page
title: Regionoj
---
{% assign regionoj = site.regionoj | sort: "title" %}
{% for r in regionoj %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endfor %}  

