---
layout: page
title: Instructors 
permalink: /instructors/
---

## Workshop Instructors 


{% for member in site.data.members %}
## {{ member.name }}

<img src="{{ member.pic | relative_url }}{{ member.pic }}" alt="{{ member.name }}">

{{ member.description }}


{% endfor %}