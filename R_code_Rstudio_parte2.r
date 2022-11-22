#Ottava Lezione
#spiegazione progetto
#Visualizzazione dei dati
library(palmerpenguins)   #carica il pacchetto

data("penguins")

rm(list =ls())

data("penguins")

head(penguins) #mostra le prime n osservazioni di un vettore /n righe di un dataframe
head(as.data.frame(penguins))

#tibble:tipo particolare di dataframe

?penguins       #per info sul database

#Size measurements for adult foraging penguins near Palmer Station, Antarctica
#Includes measurements for penguin species, island in Palmer Archipelago, size (flipper length, body mass, bill dimensions), and sex.
#This is a subset of penguins_raw.

str(penguins)     #per vedere la struttura del dataset

library(tidyverse)        #caricare pacchetto tydiverse

#ggplot <- descrivere dati con pochi strati intercambiabili con cui comporre i grafici

#Funzione per visualizzare grafico, ottenendo gli assi cartesiani

penguins%>%
  ggplot()
  
ggplot(penguins, aes(x = flipper_length_mm,
                     y = body_mass_g))  + 
  geom_point()   +                #per visualizzare i dati sul grafico
 labs(
    title = "Penguin size, Palmer station LTER",
    subtitle = "Flipper length and body mass for Adelie and other language",
    x = "Flipper length (mm)",
    y = "Body mass (g)"
  )


#dato + assi + geometria: 3 layer + 1






















