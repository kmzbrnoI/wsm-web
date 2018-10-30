---
layout: page
title: WSM PCB
permalink: /pcb
order: 10
---

WSM uses 2 Printed Circuit Boards:

 * Main Board
 * Board with sensor

Sensor board is a simple small PCB which holds the optosensor, all the logic is
wired in the Main Board.

 * [Repository with materials](https://github.com/kmzbrnoI/wsm-pcb)

The whole car is designed to be supplied by any 3.7V LiPo battery. PCB design
allows you to charge the battery via USB, so no disconnecting of the battery
nor external charger is required. The measurement is based on an opto-sensor
capturing a perforated wheel connected to an axis of a wheel of the car. The
speed-data are transmitted via *HC-05* bluetooth module to any device supporting
*SPP bluetooth profile*.

The PCBs are designed in Eagle 9, you may freely use the drawings according to
the Apache License v2.0.

You may download assembly materials in
[Releases](https://github.com/kmzbrnoI/wsm-pcb/releases).

The main parts of the Main Board are:

 * ATmega328p processor
 * LE33 LDO
 * On-Off circuit
 * Battery charging circuit
 * LEDs
 * Connectors
