---
layout: page2
title: FOIA Fiscal Year Reports
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /foia/year/
#redirect_from:
#  - /foia
#document-ready:
#  - getRate();
---

## FOIA Fiscal Year Reports

__Most recent:__

{% include file-list coll="pdf" folder="/reading-room/FOIA/year/" format='title' reverse=true dobutton=true count=2 -%}

<h3 class="usa-sr-only">older FOIA reports, descending by year</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="all-files" title="Previous Annual FOIA Reports" inList=false -%}
{% include file-list coll="pdf" folder="/reading-room/FOIA/year/" format='title' reverse=true dobutton=true dropTwo=true -%}
{% include accordion/end  inList=false -%}
</div>


<!-- CONTENT END -->