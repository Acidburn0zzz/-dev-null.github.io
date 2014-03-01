---
layout: page
title: Hello World!
tagline: Supporting tagline
---
{% include JB/setup %}

Welcome!

## Site Articles

This blog contains sample posts which help stage pages and blog data.

Here's a sample "posts list".

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

## To-Do

<ol>
<li>Create an actual front page.</li>
<li>Do something with this site.</li>
</ol>

