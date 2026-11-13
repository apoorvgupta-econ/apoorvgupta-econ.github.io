---
layout: page
permalink: /research/
title: research
header_title: <span class="font-weight-bold">Research</span>
description: Working papers and publications. Click "Abs" to expand abstracts.
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<div class="publications">

<h2 class="mt-4 mb-3">working papers</h2>

{% bibliography --group_by none --query @*[category=working_paper]* %}

<h2 class="mt-5 mb-3">publications</h2>

{% bibliography --group_by none --query @*[category=publication]* %}

</div>
