---
layout: page2
title: Reading Room
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /reading-room/
redirect_from:
  - /ReadingRoom.html
  - /ReadingRoom/
#document-ready:
#  - getRate();
# most_recent is the list of files (4?) that you want to list on the top of the page.
# Enter the filename with a unique path/name prefix where the most recent file was added
# (it doesn't have to be the whole filename and path, just enough to be unique for the file you just added)
most_recent:
  - /reading-room/SurveysPart/satisfaction/TSP-Survey-Results-2024
  - /reading-room/SurveysPart/behavior/Participant-Behavior-and-Demographics-2019-2023
  - /reading-room/FinStmts/TSP-FS-Dec2023
  - /reading-room/congress/education/Financial_Literacy_Rpt_2023
---

## Reading Room

{% include subscribe-button title="to receive Reading Room updates" topic_id="USFRTIB_4" -%}
<br>

{% capture body -%}
Below you will find links to a variety of information about the FRTIB, starting with the law that created the FRTIB and the TSP, as well as financial statements, press releases, and surveys of employees and participants.

__Latest Updates__

<ul>
{% for mr in page.most_recent -%}
{% include file-list coll="pdf" folder=mr reverse=true format='title' sortKey='name' dobutton=true count=1 addLI=true -%}
{% endfor -%}
</ul>
{% endcapture -%}
{% include desc-box card_body=body foot_text=false
      card_img="hero/readingroom_headerL.png" altText="PDFs and other files from FRTIB" -%}


<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.reading_room_nav -%}
{% if forloop.first -%}{% continue -%}{% endif -%}
{% include card-no-media striped=true heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->

<!-- CONTENT END -->
