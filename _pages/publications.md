---
layout: page
permalink: /research/
title: research
description: Working papers and publications. Click "Abs" to expand abstracts.
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<div class="publications">

<h2 class="mt-4 mb-3">Working Papers</h2>

{% bibliography --group_by none --query @*[category=working_paper]* %}

<h2 class="mt-5 mb-3">Publications</h2>

{% bibliography --group_by none --query @*[category=publication]* %}

</div>
