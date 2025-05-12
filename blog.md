---
layout: default
title: blog | Jakob Nacanaynay
---
# Blog

{% include mailinfo.html from="Jakob Nacanaynay <jn567@cornell.edu>" to="You <anyone@out.there>" date="Today" subject="Blog" %}

## Courses

<ul>
{% for post in site.posts %}
    {%  if post.tags contains 'course' %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>

## Everything

<ul>
{% for post in site.posts %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
