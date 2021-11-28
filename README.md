# Analiza podatkov s programom R - 2021/22

Vzorčni repozitorij za projekt pri predmetu APPR v študijskem letu 2021/22. 

## Analiza cestnega prometa v Sloveniji

V svoji seminarski nalogi bom preučil nekatere ključne stvari cestnega prometa v Sloveniji.

Analiziral bom, katera prevozna sredstva ljudje uporabljajo in kako se to razlikuje skozi daljše časovno obdobje. Poleg tega bom prikazal količinsko razliko uporabljenih cestnih vozil po regijah in tudi skozi leta, prav tako pa bom pogledal porast uporabe osebnih in specialnih avtomobilov na alternativne vire goriva v skrajnih letih. Podobno si bom prizadeval v najdbi povezave med povprečno starostjo osebnih avtomobilov in povprečno mesečno neto plačo po regijah ter preveriti to spremembo med plačo in starostjo osebnega avtomobila v nekem daljšem časovnem intervalu. Za nameček bom pogledal še, kako se spreminja število umrlih v cestnoprometnih nesrečah na 10.000 registriranih motornih vozil po posameznih regijah. Ob pomoči analize podatkov bom izsledil navezo med deležem potnikov in prometnih nesreč glede na uporabo določenih prevoznih sredstev.

Cilji moje proučitve bodo opažanje sprememb različnih prevoznih sredstve. Število umrlih, povprečni delež osebnih avtomobilov in povprečna starost le-teh skozi leta. Nekatere spremembe bodo prikazane glede na regije v Sloveniji.


## Program

Glavni program in poročilo se nahajata v datoteki `projekt.Rmd`.
Ko ga prevedemo, se izvedejo programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`.
Potrebne knjižnice so v datoteki `lib/libraries.r`
Podatkovni viri so v mapi `podatki/`.
Zemljevidi v obliki SHP, ki jih program pobere,
se shranijo v mapo `../zemljevidi/` (torej izven mape projekta).
