---
layout: page2
title: Contact Us
styles:
sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /contacts/
redirect_from:
  - /Contacts.html
#document-ready:
#  - getRate();
show_last_modified: false
---

## Contact Us


<h3 class="usa-sr-only">notice containing contact options</h3>
{% capture message_body -%}
From the 50 States, including the District of Columbia, the Virgin Islands, Puerto Rico, Guam, American Samoa, and Canada, call the following number toll free:

__ThriftLine:__
<a href="tel:1-877-968-3778">1-TSP-YOU-FRST (1-877-968-3778)</a>

__711 TTS Relay:__ Persons with a hearing or speech disability may utilize the free Telecommunications Relay Service (TRS) by dialing 711 from any telephone.

__International callers:__ International callers who cannot use the toll-free number should call <a href="tel:404-233-4400">404-233-4400</a>
(not toll free).

__Email:__ For general inquiries email <thriftline@tsp.gov>. Do not email personally identifiable information or documents.

You can also contact the TSP through the options listed on
<a href="https://www.tsp.gov/contact" target="_blank" rel="noopener">www.tsp.gov/contact</a>.
{% endcapture -%}
{% include alert-block msg_type="info" msg_body=message_body markdownify=true
  msg_head="Need to discuss an issue regarding your TSP account?  Call the TSP Thriftline!" -%}

<br clear="all">

<ul class="usa-card-group">

<!--start of automated response card -->
{% capture card_body -%}
__ThriftLine is available 24 hours a day, 7 days a week__

From a touch-tone telephone, you can find out the latest information about the TSP (such as share prices and rates of return), as well as information about your TSP account.  You can also request certain account transactions.

You will need your 8-digit Date Of Birth (DOB) and your 6-digit TSP Personal Identification Number (PIN).
{% endcapture -%}
{% include card-no-media text=card_body noButton=true card_size=12
  heading='Automated Response System for TSP Account Holders' -%}

<!--start of talk to card -->
<!-- {% capture card_body -%}
__Available Monday-Friday   7:00 a.m. to 9:00 p.m., Eastern time.__

Press 3 to speak to a Participant Service Representative (PSR) when calling the ThriftLine.

PSRs handle questions about loans, contribution allocations, interfund transfers, designations of beneficiaries, and withdrawals.
{% endcapture -%}
{% include card-no-media text=card_body noButton=true card_size=6
  heading='Talk to a Participant Service Rep' -%}
-->
<!--start of mail or fax card -->
{% capture card_body -%}
__Available Monday-Friday   7:00 a.m. to 9:00 p.m., Eastern time.__

To ensure proper handling, forms, written requests, inquiries, and other correspondence from TSP participants and beneficiaries should continue to be mailed to:

Thriftline Service Center<br>
C/O Broadridge Processing<br>
P.O. Box 1600<br>
Newark, NJ 07101-1600

These inquiries may also be __faxed__ to the Thriftline Service Center at <a href="tel:1-276-926-8948">1-276-926-8948</a>.

{% endcapture -%}
{% include card-no-media card_body=true text=card_body noButton=true card_size=12
  heading='Need to mail or fax forms and other correspondence?' -%}

</ul>

### Federal Retirement Thrift Investment Board

To contact an employee of the FRTIB, you may call <a href="tel:202-942-1600">202-942-1600</a>.

For inquiries from other Executive Branch Agencies, the Legislative Branch, or the Uniformed Services, you may write directly to the FRTIB at the following address:

__Federal Retirement Thrift Investment Board__<br>
77 K Street, N.E. <br>
Suite 1000<br>
Washington, D.C. 20002

Please be aware that the FRTIB will forward any forms, written requests, inquiries, or correspondence it receives from TSP participants or beneficiaries to the Thriftline Service Center.

If you want to contact Board member(s), please send an email to <a href="mailto:FRTIB_Board_Members@frtib.gov">FRTIB_Board_Members@frtib.gov</a>

### Press inquiries

Media inquiries may be sent to <PressInquiries@frtib.gov>.

### Having technical issues?

TSP.GOV and TSP Account related issues should be directed to the TSP Thriftline <a href="mailto:thriftline@tsp.gov?subject=TSP Account Issues" target="_blank" rel="noopener">thriftline@tsp.gov</a>.

FRTIB.GOV website related issues should be directed to the FRTIB Webmaster <a href="mailto:{{site.email}}?subject=FRTIB website technical issues" target="_blank" rel="noopener">webmaster@frtib.gov</a>.

<!-- CONTENT END -->
