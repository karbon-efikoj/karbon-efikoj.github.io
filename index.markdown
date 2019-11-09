---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
list_title: Anoncoj
fontoj:
  - lng: en
    eo: Klimatsignaloj - mapo kun eventoj, kiuj estas atribuitaj al klimatŝanĝo
    url: https://www.climatesignals.org/
---
{% for f in page.fontoj %}
- [{{ f.eo }}]({{f.url}}) ({{f.lng}})
{% endfor %}
<object data="karbon-efikoj.svg" type="image/svg+xml">


