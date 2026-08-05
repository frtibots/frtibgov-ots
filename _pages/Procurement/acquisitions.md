---
layout: page2
title: Acquisition Process and Methods
styles:
sidenav: procurement_nav
scripts:
#  - /assets/js/jquery.min.js
permalink: /procurement/acquisitions/
redirect_from:
  - /acquisitions/
  - /procurement-acquisitions
#document-ready:
#  - getRate();
---

## FRTIB’s Acquisition Process and Methods

The basic phases of the Acquisition process include:

<br>
<!-- cards starts here -->
<ul class="usa-card-group">

<!--start of process list -->
{% capture card_body -%}
<ol class="usa-process-list">
{% include process-list-item text="Define requirements" listType="list" -%}
{% include process-list-item text="Acquisition Planning" listType="list" -%}
{% include process-list-item text="Draft Solicitation" listType="list" -%}
{% include process-list-item text="Publicize" listType="list" -%}
{% include process-list-item text="Evaluation" listType="list" -%}
{% include process-list-item text="Discussions &#42;" listType="list" -%}
{% include process-list-item text="Award" listType="list" -%}
</ol>

&#42; Process may vary according to acquisition vehicle that is used.
{% endcapture -%}
{% include card-no-media striped=true heading='Formation' text=card_body noButton=true card_size=6 -%}
<!--end process list-->

<!--start of process list -->
{% capture card_body -%}
<ol class="usa-process-nolist">
{% include process-list-item text="Changes" -%}
{% include process-list-item text="Disputes" -%}
{% include process-list-item text="Inspection and Acceptance" -%}
{% include process-list-item text="Close-out or Termination" -%}
</ol>
{% endcapture -%}
{% include card-no-media striped=true heading='Administration' text=card_body noButton=true card_size=6 -%}
<!--end process list-->

</ul>
<!-- end of cards -->


<!-- START Acquisition Thresholds -->
### Acquisition Thresholds

FRTIB’s Micro Purchase Threshold (MPT) is $15,000; our Simplified Acquisition Threshold (SAT) is $250,000.

<!--start accordion -->
<div class="usa-accordion usa-accordion--bordered">

{% include accordion/start expanded=false divID='accMPT' title='MPT' inList=false -%}
* When a requirement is $15,000 or less, competitive pricing is not required.
* Awards may be made directly using the Government Purchase Card.
* FRTIB prefers this method for acquiring certain types of low-cost goods and training because it is efficient and cost effective.
{% include accordion/end inList=false -%}

{% include accordion/start expanded=false divID='accSAT' title='SAT' inList=false -%}
* FRTIB uses simplified acquisition procedures for contracting requirements that are not complex in nature and are $250,000 or less.
* FRTIB issues requests for quotes from generally a minimum of three vendors.
{% include accordion/end inList=false -%}

{% include accordion/start expanded=false divID='acc250K' title='Contracts Greater than $250,000' inList=false -%}
* FRTIB uses more formal contracting procedures for requirements that are complex and greater than $250,000.
* FRTIB issues formal solicitations and award contracts for these requirements.
* FRTIB generally solicits a minimum of three firms.
{% include accordion/end inList=false -%}

{% include accordion/start expanded=false divID='accNotCompetative' title='Non-Competitive Acquisition' inList=false -%}
* If FRTIB determines only one firm can provide the goods or services required, FRTIB uses noncompetitive contracting procedures following the Competition in Contracting Act of 1984.
* Unique situations arise in which competitive acquisitions are not possible. These generally involve urgent or specialized requirements.
{% include accordion/end inList=false -%}

</div> <!-- end accordion -->
<!-- END Acquisition Thresholds -->


<!-- START Contracting Methods -->
### Contracting Methods

FRTIB primarily uses Contracting by Negotiation (FAR Part 15) and Simplified Acquisition Procedures (FAR Part 13); FRTIB does not use Sealed Bidding methods (FAR Part 14).

<!--start accordion -->
<div class="usa-accordion usa-accordion--bordered">

{% include accordion/start expanded=false divID='accNegotiation' title='Contracting by Negotiation' inList=false -%}
Negotiations are exchanges, in either a competitive or sole source environment, between the Government and offerors that are undertaken with the intent of allowing the offeror to revise its proposal. When negotiations are conducted in a competitive acquisition, they take place after the competitive range has been established, and are called discussions.

The discussions with each offeror in the competitive range should help the offeror prepare a final proposal revision that will provide the best value for FRTIB. Then FRTIB will evaluate the revised proposals to determine which proposal offers the overall best value.
{% include accordion/end inList=false -%}

{% include accordion/start expanded=false divID='accSimplified' title='Simplified Acquisition Procedures' inList=false -%}
Simplified Acquisitions use a set of procedures designed to make it easier to purchase supplies and services that are under certain thresholds by expediting the evaluation processes and keeping documentation to a minimum.

FRTIB uses Simplified Acquisitions Procedures to the maximum extent practicable for all purchases of supplies and services not exceeding $250,000, the Simplified Acquisition Threshold (SAT).
{% include accordion/end inList=false -%}

</div>
<!-- END Contracting Methods -->

### Other Types of Contracts and Purchase Orders

FRTIB uses the General Services Administration’s (GSA) Federal Supply Schedules and Government-Wide Acquisition Contracts (GWACs), including NASA’s Solutions for Enterprise-Wide Procurement, to place orders for goods and services directly with contractors.

Many of FRTIB’s requirements are competed using GSA schedules and competitive GWACs because these are streamlined instruments including price lists and pre-negotiated terms. These vehicles help meet FRTIB’s contracting needs because they are more efficient and include a diverse mix of vendors.

{% include_relative policy-links.html -%}

{% include_relative opportunity-links.html -%}

<!-- CONTENT END -->
