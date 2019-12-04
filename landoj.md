---
layout: page
title: Landoj
---

# Plej grandaj laŭjaraj emisiantoj

Laŭ absolutaj 
[ĉiujaraj emisioj](https://ourworldindata.org/co2-and-other-greenhouse-gas-emissions#annual-co2-emissions),
ili kune eligas pli ol du trionojn da forcejgasoj kaj
do per sia politiko havas la plej grandan influon
pri nia estonteco:
[Ĉinujo](/regionoj/CHN.html): 27%,
[Usono](/regionoj/USA.html): 15%,
[Eŭropa Unio](/regionoj/EU.html): 10%,
[Barato](/regionoj/IND.html): 7%,
[Rusujo](/regionoj/RUS.html): 5%,
[Japanujo](/regionoj/JPN.html): 3,5%,
Internacia aviado kaj ŝiptrafiko: 3%.

# Landoj laŭ mondpartoj (kompletigendaj)

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
{% assign eur = regionoj | where: "relative_path", "_regionoj/EU.md" %}
* [{{ eur[0].titolo | escape }}]({{ eur[0].url | relative_url }})
{% for r in regionoj %}
{% assign regdat = site.data.unsd | where: "iso3", r.slug %}
{% if regdat[0].rcode == "150" %}
{% unless site.data.eu contains r.slug %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endunless %}
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
{% unless r.slug == "CYP" %}
{% assign title = site.data.reg_eo[r.slug] %}
* [{{ title | default: r.slug | escape }}]({{ r.url | relative_url }})
{% endunless %}
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
