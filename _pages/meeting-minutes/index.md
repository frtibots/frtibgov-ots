---
layout: page2
title: Meeting Minutes
styles:
# sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /meeting-minutes/
return_to_top: true
last_update: Dec 23rd, 2025
redirect_from:
  - /MeetingMinutes.html
  - /MeetingMinutes/
#document-ready:
#  - getRate();
---

## Meeting Minutes
{% include subscribe-button title="to receive Meeting Minutes updates" topic_id="USFRTIB_2" -%}

<br>
{% capture body -%}
Board meetings, which can be observed by the public, are generally held the 4<sup>th</sup> Tuesday of each month (except where noted on the current meeting calendar).
{% endcapture -%}
{% capture foot_text -%}
{% include file-list coll="pdf" folder="/board-meetings/2026_Board_Meeting_Calendar.pdf" reverse=true format='title' dobutton=true count=1 button_style="on-card thin" -%}
{% endcapture -%}
{% include desc-box  card_body=body card_foot=foot_text
      card_img="hero/meetingminutes_headerL.png" altText="Record of FRTIB meeting minutes" -%}


{% include meeting-minutes/full-list -%}

Older meeting minutes files can be accessed as ZIP files (with attachments) at the [Meeting Minutes Archive](https://minutes.frtib.gov/){: target="_blank" }.

{% comment -%}
<!-- uncomment this liqud block to see examples of the alert types -->
{% include alert-block msg_type="info" msg_head="info head" msg_body="this is the info message" -%}
{% include alert-block msg_type="warning" msg_head="warning head" msg_body="this is the warning message" -%}
{% include alert-block msg_type="error" msg_head="error head" msg_body="this is the error message" -%}
{% include alert-block msg_type="success" msg_head="success head" msg_body="this is the success message" -%}
{% endcomment -%}

<!-- CONTENT END -->
