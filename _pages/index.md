---
layout: wide
title: The Official FRTIB Homepage
styles:
sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /
return_to_top: false
redirect_from:
  - /index.html
  - /Home.html
#document-ready:
#  - getRate();
#
---

<div class="usa-grid-full">

<!-- top area -->
{% capture header -%}
<span class="usa-hero__heading--alt">FRTIB Strategic Plan</span>FY 2027-31
{% endcapture -%}
{% capture body -%}
FRTIB’s mission is to help current and former civilian employees and members of the uniformed services prepare for their retirement years via the TSP.

Download the FY 2027-31 Strategic Plan to see our plans for the next five years.

<a class="usa-button on-card" href="{{site.baseurl}}/reading-room/strategic-plan/">View the Strategic Plan</a>
{% endcapture -%}
{% assign body = body|markdownify -%}
{% include home/hero-callout label="Introduction" header=header body=body -%}

<!-- middle area -->
{% capture left -%}
Our Mission<br>Our Goals
{% endcapture -%}
{% capture right -%}
The FRTIB is charged by law to administer the TSP solely in the interest of the participants and beneficiaries.

We seek to improve participant retirement outcomes; provide top-tier defined contribution service to participants; function as a high-performing Agency; and transition successfully to a managed services operating model.  
{% endcapture -%}
{% assign right = right|markdownify -%}
{% include home/middle left=left right=right -%}

{% include home/satisfaction -%}

<!-- bottom area above footer-->
{% include home/footer-feature-section -%}

</div>


<!-- CONTENT END -->
