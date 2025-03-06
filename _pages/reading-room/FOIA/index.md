---
layout: page2
title: Reading Room FOIA
styles:
sidenav: reading_room_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /foia/
#redirect_from:
#  - /foia
#document-ready:
#  - getRate();
---

## Freedom of Information Act (FOIA)

The Freedom of Information Act (FOIA) provides the public the right to request access to records from any federal agency. Federal agencies will disclose any information requested under the FOIA unless it falls under one of nine exemptions which protect interests such as personal privacy, national security, and law enforcement.

## FOIA Guidance
                                      

### How to make a FOIA request:



FOIA requests may be submitted by one of the following methods:


(1)	In writing addressed to FOIA Officer, Federal Retirement Thrift Investment Board, 77 K Street N.E., Suite 1000, Washington, DC 20002. The words ‘‘FOIA Request’’ must be clearly marked on both the letter and the envelope.

(2)	By electronic mail to <a href="mailto:foiarequest@frtib.gov?subject=FOIA REQUEST" target="_blank" rel="noopener">FOIA REQUEST</a>.

(3)	Online, through the National FOIA Portal at [www.foia.gov](https://www.foia.gov){: target="_blank"}.



The request should reasonably describe the records being sought, including, when known: the entity or individual originating the record, the date of the record, the subject matter, the type of document, the location of the record, and other pertinent information which would assist in locating the record(s).

### FOIA Quicklinks

•	   [Submit a FOIA Request Online](https://www.foia.gov/agency-search.html?id=a2f264a0-e089-47e4-832e-c8cd465d2421&type=component){: target="_blank"}.

•	  [FRTIB FOIA Regulations](https://www.ecfr.gov/current/title-5/chapter-VI/part-1631){: target="_blank"}.

•	  [FOIA Statute](https://www.govinfo.gov/content/pkg/USCODE-2012-title5/html/USCODE-2012-title5-partI-chap5-subchapII-sec552.htm){: target="_blank"}.
### FRTIB FOIA Personnel:
  
  Dharmesh Vashee
  Chief FOIA Officer
  
  Peter Robbins
  Principal FOIA Officer
    
  Stefanie George
  FOIA Liaison
  
  <a href="mailto:FOIALiaison@frtib.gov?subject= Question for FOIA Liaison" target="_blank" rel="noopener">FOIA Liaison</a>.

  Amanda Haas 
  FOIA Officer
  202-942-1660
  
  <a href="mailto:FOIARequest@frtib.gov?subject= Question for FOIA Officer" target="_blank" rel="noopener">FOIA Officer</a>.

### FREQUENTLY REQUESTED RECORDS and FOIA REPORTS 






<br>
<br>
<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.rr_foia_nav -%}
{% include card-no-media heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->

<!-- CONTENT END -->
