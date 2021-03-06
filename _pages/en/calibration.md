---
layout: page
title: Automatic Calibration
permalink: /en/auto-calib
order: 25
lang: en
ref: calibration
---

![Automatic Calibration application GUI](/assets/img/ac_progress.png)

The original purpose of the WSM was to automate the process of *calibration*.

*Calibrating* = assigning power to each of 28 speed steps so specific speed steps
fit specific real speed. E. g. step 15 = 40 km/h, step 17 = 50 km/h etc. This
assignment is defined by user and this application loads it from file
`speed.csv`. The main aim of this application is to do this *assignment*
automatically.

The application connects to the WSM and XpressNET command station and simply
performs calibration fully automatically and precisely.

<a class="btn" href="https://github.com/kmzbrnoI/automatic-calibration/releases">Download</a>
<a class="btn" href="https://github.com/kmzbrnoI/automatic-calibration">Source codes</a>
