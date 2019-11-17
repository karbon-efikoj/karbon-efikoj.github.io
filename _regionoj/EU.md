---
layout: region
titolo: Eŭropa Unio
fontoj:
  - lng: en
    en: Climate change Europe
    eo: Klimatŝanĝo en Eŭropo
    url: https://www.climatechangepost.com/europe/climate-change/
  - lng: en
    en: Climate Action Tracker EU
    eo: "Klimataga mezurilo: Eŭropa Unio"
    url: https://climateactiontracker.org/countries/eu/
---    
La Eŭropa Unio sekvas komunan politikon pri la limigo de forcejgasaj emisioj.
Jen la 28 ŝtatoj de la Eŭropa Unio:
{% for r in site.data.eu %}
{% assign title = site.data.reg_eo[r] %}
{% assign url = "/regionoj/" | append: r | append: ".html" %}
* [{{ title | escape }}]({{ url | relative_url }})
{% endfor %}  