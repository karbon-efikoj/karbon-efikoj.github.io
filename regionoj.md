---
layout: page
title: Regionoj
---
{% assign regionoj = site.regionoj | sort: "title" %}

<table style="table-layout:fixed;border: none">
<tr>
<td markdown="1" style="vertical-align:top;border: none">

# Amerikoj

{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "019" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endif %}
{% endfor %}  

</td>
<td markdown="1" style="vertical-align:top;border: none">

# Eŭropo
{% assign eur = regionoj | where: "relative_path", "_regionoj/150.md" %}
* [{{ "Eŭropo" | escape }}]({{ eur[0].url | relative_url }})
{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "150" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endif %}
{% endfor %}  

</td>
<td markdown="1" style="vertical-align:top;border: none">

# Afriko

{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "002" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endif %}
{% endfor %}  

</td>
<td markdown="1" style="vertical-align:top;border: none">

# Azio

{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "142" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endif %}
{% endfor %}  

</td>
<td markdown="1" style="vertical-align:top;border: none">

# Oceanio

{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "009" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endif %}
{% endfor %}  

</td>
</tr>
</table>
