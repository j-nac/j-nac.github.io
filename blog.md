---
layout: default
title: blog | Jakob Nacanaynay
---

# blog

---

## Miscellaneous

{% include mailinfo.html from="Jakob Nacanaynay <jnac8080@gmail.com>" to="You <anyone@out.there>" date="June 26, 2023, 7:33 PM" subject="Who am I?" %}

<ul>
{% for post in site.posts %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
