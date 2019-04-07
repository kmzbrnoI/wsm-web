---
layout: page
title: Návod k použití
permalink: /cz/instructions
order: 5
lang: cz
ref: mechanics
---

## Co je třeba ke zprovoznění vozu

 * Samotný vůz WSM.
 * Počítač s OS Windows/Linux. V případě OS Windows minimálně Windows Vista.
 * Možnost připojit k počítači Bluetooth zařízení. Notebooky mají Bluetooth
   adaptér často vestavěný, pro připojení k desktopu můžete zakoupit jakýkoliv
   Bluetooth dongle, například [tento](https://www.tsbohemia.cz/gembird-usb-bluetooth-v4-0-dongle_d253531.html).
   Pro komunikaci stačí Bluetooth verze alespoň 2.0.
 * Stáhnutý software [WSM Speed Reader](/cz/speed-reader).

## Základní manipulace s vozem

Měřicí vůz WSM vypadá ve všech měřítkách přibližně takto:

![Nákres mechaniky WSM](/assets/img/wsm-3d-cz.png)

Vůz je napájen výhradně Li-Pol baterií.

* Vůz se zapíná stiskem tlačítka označeného zeleným štítkem na hlavní DPS.
* Vůz se vypíná stiskem tlačítka označeného červeným štítkem na hlavní DPS.

Vůz vydrží v provozu přibližně 14 hodin, po dokončení používání vůz vypínejte,
aby se baterie zbytečně neopotřebovávala. Vůz je možné kdykoliv dobít připojením
5V micro-USB adaptéru podobně, jako nabíjíte třeba svůj mobilní telefon. Spotřeba
nabíjení je přibližně 200–400 mA, není tedy třeba žádné speciální silné
nabíječky. Vůz je možné dobíjet z USB portu počítače. Vůz doporučujeme nabít
vždy až do plně nabitého stavu.

Vůz bývá osazován Li-Pol bateriemi o kapacitě 500–650 mAh.

## Signalizace stavu vozu

Vůz obsahuje 4 LED diody: zelenou, žlutou, červenou a modrou.

* **Modrá LED** indikuje nabíjení baterie. LED by se měla rozsvítit po
  připojení nabíjecího USB konektoru. LED zhasne, jakmile je baterie nabitá.
* **Oranžová LED** změní svůj stav při každém detekované náběžné hraně na optickém
  senzoru měřícím rychlost. Na jednu otáčku osmidírkového perforovaného kola by
  se tak LED měla 4× rozsvítit a 4× zhasnout.
* **Zelená LED** krátce problikne jednou za 5 vteřin a indikuje správný chod
  zařízení. Konkrétně LED problikává v momentě, kdy dochází k měření napětí
  baterie.
* **Červená LED** indikuje nízký stav baterie vozu.

Zelená, žlutá a červená LED krátce probliknou po zapnutí vozu.

## Detekce vybití

Vůz si průběžně měří stav baterie. Při nízkém napětí rozsvítí červenou LED.
Po rozsvícení LED je možné ještě přibližně 30 minut vůz používat. Jakmile vůz
detekuje kritický stav baterie, červená LED několikrát problikne a vůz se
sám vypne. Při pokusu o zapnutí zeleným tlačítkem se vůz krátce zapne, červená
LED problikne a vůz se sám vypne. Toto je ochrana proti zničení baterie
podvybitím. Vybitý vůz je třeba nabít.

## Připojení k počítači

V počítači je třeba zapnout Bluetooth adaptér, zapnout měřicí vůz a naskenovat
dostupná Bluetooth zařízení. Mezi zařízeními by se mělo objevit zařízení
*WSM-xx* (např. *WSM-05*), s tímto zařízením se spárujte. Při párování je třeba
zadat čtyřmístný PIN, který je napsaný na komunikačním modulu měřicího vozu.

Po spárování by se měl vůz připojit jako sériový port. Po spuštění aplikace
[WSM Speed Reader](/cz/speed-reader) vyberte název COM portu, měřítko a průměr
kola vozu. Připojte se k COM portu.

Pokud vůz funguje, šedé kolečko by mělo blikat a měla by být průběžně
zobrazována aktuální rychlost.

## Měření rychlosti

 * Vůz je typicky schopen měřit modelové rychlosti v rozsahu cca 4–140 km/h
   (v závislosti na konstrukci perforovaného kola, měřítku, ...).
 * Pro přesné měření rychlosti vůz spojte s lokomotivou co nejpevněji.
   **Použijte co nejpevnější spřáhla**. Osvědčená spřáhla jsou:
    - TT: [pevná spřáhla Tillig](https://www.itvlaky.cz/sprahla/1-par-pevna-sprahla-do-sachty-nem-tj--v-baleni-2-ks--tillig-08828x/),
    - H0: [spřáhlo Roco profi](https://www.itvlaky.cz/sprahla/h0-sprahlo-roco-profi--pro-sachtu-nem-362--4ks-roco-40270/).

## Přesná kalibrace

Pro měření rychlosti je nutné do měřicího SW zadat průměr modelového kola vozu
a to ideálně s přesností na setinu milimetru. Pro skutečně precizní kalibraci
je možné průměr kola změřit jízdou vozu:

 1. Připravte vůz s lokomotivou na rovnou kolej (alespoň 1 m; čím delší, tím
    lepší). Zadejte přibližný průměr kola.
 2. Připojte měřicí SW, proveďte _reset_ ujeté vzdálenosti.
 3. Popojeďte s vozem o přesnou vzdálenost (například natáhněte svinovací metr
    vedle kolejí).
 4. Z počtu kmitů senzoru (číslo v závorce vedle ujeté vzdálenosti) zpětně
    dopočítejte průměr kola dle vztahu:
    `wheel_diameter = (8 · real_distance) / (pi · ticks_count)`.
 5. Pro další měření použijte dopočítaný průměr kola.
