---
layout: page
title: Instructors 
permalink: /instructors/
---

## Workshop Instructors 


{% for member in site.data.members %}
## {{ member.name }}

<img src="{{ '/img/' | relative_url }}{{ member.image }}" alt="{{ member.name }}">

{{ member.description }}


{% endfor %}