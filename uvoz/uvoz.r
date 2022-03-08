# 2. faza: Uvoz podatkov

library(readr)
library(tidyr)
library(dplyr)
library(reshape2)

sl <- locale("sl", decimal_mark=",", grouping_mark=".")


#POTNIŠKI PREVOZ IN PROMET
potniski_promet <- read_csv2("podatki/Potniski_prevoz_in_promet.csv", col_names = c("Potniki(1000)", "Vrsta_prevoza", 2004:2020),
                             skip = 3, n_max = 8, na = "...",
                             locale=locale(encoding="Windows-1250"))
potniski_promet <- potniski_promet[,-1]

potniski_promet <- melt(potniski_promet, id.vars = "Vrsta_prevoza", measure.vars = names(potniski_promet)[-1],
                        variable.name = "Leto", value.name = "Stevilo_potnikov",
                        na.rm = TRUE)


#ŠTEVILO OSEBNIH IN SPECIALNIH AVTOMOBILOV GLEDE NA VRSTO GORICA IN POGONA
pogon_in_goriva <- read_csv2("podatki/Prevozna_sredstva_glede_na_pogon_in_gorivo.csv", col_names = c("Leto", "Osebni_in_specialni_avtomobili", "Vrsta_pogona", "Stevilo_osebnih_in_specialnih_avtomobilov"),
                             skip = 4, n_max=36,
                             locale = locale(encoding = "Windows-1250"))
pogon_in_goriva <- pogon_in_goriva[c(3,1,4)] %>% fill(2)

pogon_in_goriva <- filter(pogon_in_goriva, Vrsta_pogona != 'NA')
pogon_in_goriva <- filter(pogon_in_goriva, Vrsta_pogona != 'Vrsta pogona in goriva - SKUPAJ')


indeks <- dcast(pogon_in_goriva, Vrsta_pogona~Leto, value.var = 'Stevilo_osebnih_in_specialnih_avtomobilov') 
colnames(indeks) <- c("Vrsta_pogona", "a", "b", "c", "d")
indeks <- transform(indeks, Indeks1 = (b-a)*100/a)
indeks <- transform(indeks, Indeks2 = (c-b)*100/b)
indeks <- transform(indeks, Indeks3 = (d-c)*100/c)
indeks <- indeks[c(1,6,7,8)]
colnames(indeks) <- c("Vrsta_pogona", 2018:2020)

indeks <- melt(indeks, id.vars = "Vrsta_pogona", measure.vars = names(indeks)[-1],
               variable.name = "Leto", value.name = "Indeks")
