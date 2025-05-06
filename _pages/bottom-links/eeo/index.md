---
layout: page2
title: EEO
styles:
sidenav:
scripts:
#  - /assets/js/jquery.min.js
permalink: /eeo/
redirect_from:
  - /EEO.html
#document-ready:
#  - getRate();
---

## Equal Employment Opportunity (EEO) is the Law

### Who May File a Complaint?

FRTIB employees, former employees, and applicants for employment are protected under various laws from discrimination in hiring, promotion, removal, benefits, job training, classification, referral, and other aspects of employment, and have a right to file an EEO complaint if they believe they have been discriminated against on the basis of: RACE, COLOR, RELIGION, SEX (INCLUDING PREGNANCY, AND SEXUAL ORIENTATION), NATIONAL ORIGIN, AGE, DISABILITY, GENETIC INFORMATION AND REPRISAL.

Religious and disability discrimination includes failure to reasonably accommodate an employee where the accommodation does not impose undue hardship. Additionally, reprisal entails retaliation against a person who files a charge of discrimination, participates in a discrimination proceeding, or otherwise opposes an unlawful employment practice.

### When to File a Complaint

You must file a complaint within 45 calendar days of the date of the matter alleged to be discriminatory or, in the case of a personnel action, within 45 days of the effective date of the action.

### How to File a Complaint

Contact Randall Berry <br>
* <Randall.Berry@frtib.gov> or Call
* <a href="tel:202-942-1682">202-942-1682</a> (Office)

<!-- cards starts here -->
<ul class="usa-card-group">
{% for room in site.data.navigation.rr_foia_nav -%}
{% include card-no-media heading=room.name button_link=room.url
      xtext=room.text button_text=room.button_text image=room.image -%}
{% endfor -%}
</ul>
<!-- end of cards -->


<h3 class="usa-sr-only">EEO documents</h3>
<div class="usa-accordion">
{% include accordion/start expanded=false divID="all-files" title="Download EEO Documents" inList=false -%}
{% include file-list coll="pdf" folder="/eeo" format='title' dobutton=true -%}
{% include accordion/end  inList=false -%}
</div>

<!-- CONTENT END -->
