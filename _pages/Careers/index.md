---
layout: page2
title: Careers@FRTIB
styles:
sidenav: careers_nav
scripts:
  - careers.js
#  - /assets/js/jquery.min.js
permalink: /careers/
redirect_from:
  - /Careers.html
document-ready:
  - showOpenJobs();
---


## Careers@FRTIB
<br>

{% capture body -%}
The Federal Retirement Thrift Investment Board (FRTIB) is a great place to work; and a place where great work gets done.  

We are an independent Federal agency responsible for administering the Thrift Savings Plan (TSP) which is considered to be one of the best retirement plans in the world and a model for defined contribution plans.

We are a team of high performing individuals with a shared focus on helping our participants achieve their desired retirement outcomes.

Do you want to make a lasting impact on the lives of our participants?  Join the FRTIB and help millions of civilian employees and members of the uniformed services prepare for one of the most significant financial decisions they will make in their lifetime, help them (and you) retire with dignity!

<a class="external_link" href="https://frtibrecruitment.usajobs.gov" target="_blank" rel="noopener">Review current FRTIB job openings</a>

{% endcapture -%}
{% include desc-box
      card_img="hero/careers_final.jpg" altText="FRTIB's diversity in employment"
      card_body=body card_foot=foot_text -%}


<div class="grid-container">
<div class="grid-row">
<div class="tablet:grid-col" markdown="1">

</div>
</div>
</div>

<ul class="usa-card-group">
{% for room in site.data.navigation.careers_nav -%}
{% if forloop.first -%}{% continue -%}{% endif -%}
{% include card-no-media striped=true heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>

<!-- CONTENT END -->
