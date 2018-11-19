---
layout: page
title: DPS WSM
permalink: /cz/pcb
order: 10
lang: cz
ref: pcb
---

WSM využívá 2 desky plošných spojů:

 * hlavní DPS,
 * DPS se senzorem.

DPS se senzorem je malá jednoduchá DPS, jejíž jediným účelem je mechanicky
uchytit senzor, veškerá logika je obsažena v hlavní DPS.

 * [Repozitář s materiály pro výrobu](https://github.com/kmzbrnoI/wsm-pcb)

Měřicí vůz je připrav na napájení z 3,7V LiPol baterie. Součástí DPS je
nabíjecí obvod, takže baterii není třeba nabíjet externě. Stačí připojit
micro-USB konektor a nabíjet. Měření rychlost je založeno na optozávoře
snímající otáčející se perforované kolo uchycené na nápravě vozu. Naměřená data
jsou pomocí Bluetooth modulu *HC-05* přenášena do libovolného Bluetooth klienta
podporujícího profil *SPP*.

Deska plošných spojů je navržena v programu Eaggle 9, schémata a výkresy DPS
jsou volně k dispozici pod licencí *Apache License v2.0*.

Materiály pro výrobu jsou k dispozici
v [Releases](https://github.com/kmzbrnoI/wsm-pcb/releases).

Hlavní součásti hlavní DPS jsou:

 * procesor ATmega328p,
 * LDO LE33,
 * zapínací a vypínací obvod,
 * nabíjecí obvod baterie,
 * signalizační LE diody,
 * konektory.
