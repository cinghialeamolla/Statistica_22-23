

#library(tidyverse) #per caricare i diversi pacchetti istallati

#setwd("C:/Runibo/") # Windows x caricare la directory
#getwd() #

#11/10/2022 
#Spiegaz su Rstudio
#programma: istruzioni da dare al computer, anche una singola linea di codice
#uno script è un documento di testo che contiene istruzioni, si apre con il + su RStudio

### PARTE 
#scrivere "Hello Word"
print("Hello World!")   #funzione che stampa su schermo l'argomento, che va tra parentesi. Equivale a un verbo.

#per eseguire il programma si usa "run"
#i tasti "ctr+ent" ripetono il comando sopra
#[n]: indici
# > "pront": significa che si è su una nuova riga di codice

### PARTE 2
#5^2 -> 5 elevato alla seconda, si può scrivere anche 5**2
#9^(1/2)  -> radice quadrata di 9
#27^(1/3) -> radice cubica di 27
#5 %% 2  -> il resto nella divisione
#5 %/% 2  ->

#un operatore è un simbolo che agisce come una funzione in R
#ci sono anche op. logici, relazionari, vari, assignement operator

### PARTE 3
#salvare uno script SU Rstudio#
#selezionaare il testo da salvare poi "ctrl shift + c"

# assegnazione variabili: creare una variabile e darle un valore
variable <- "value"
# nuova funzione
my_name <- "Pamela"
#
v <- "october"
v <- "november" #per aggiornare il contenuto di una variabule
print(v) # trova info sulla funzione, in questo caso il valore

great <- "Hello World!"
print(great)

#c1 è un nomne, 1c no

#stackoverflow: per le domande su eventuali errori
#altrimenti si può porre come domanda, es: "how to assign a variable inR"


### TERZA LEZIONE (infarinata sulla sintassi)
# come cambiare layout (disposizione pain e tab in RStudio [i 4 macropannelli]):
#"workspace pins" -> "pane layout" 

variable <- "some value"  #per assegnare una variabile
variable <- "another value" #per cambiare assegnazione
variable #scrive la variabile
print(variable) #utile per chiarezza, per capire cosa fa quella linea di codice, si mette prima del codice: stampa il contenuto della variabile
print("variable") #stampa il valore letterale, con le virgolette
(my_logical <- TRUE) #tra parentesi si ottiene sia l'assegnazione che la stampa del contenuto

#le variabili si possono usare nelle funzioni, o come valori
my_num <- 3
my_num *2
my_multiplayer <- 2
(my_num*my_multiplayer) #restituisce il valore tra la moltiplicazione tra le due variabili

var_to_be_updated <- 72
var_to_be_updated <- var_to_be_updated-2
var_to_be_updated   #modificare e fare operazioni con le variabili

#6 tipi di numeri
#logical (tipo logico): TRUE-FALSE/T-F/O-1
#sono keyword che si usano solo maiuscole, e non vanno assegnate a variabili. Non vengono racchiusi da virgolette. Sono sempre solo 2 valori

#integer (numeri interi): 1L
#si usa "L" dopo il numero per indicare cheè intero

#numeric (float/double precision/numeri decimali): 1.0
#numeri separati dal "." (perchè la "," serve a separare argomenti)

#character   #contengono parole, ma non solo. Anche altri simboli, qualsiasi cosa purchè siano tra virgolette e verranno sempreusati come parole.

#complex (numeri complessi)

#raw (dati binari, di sistema)

typeof(1L) #integer #dice i "tipi"
typeof(1) #double
class(1L) #integer  #funzione più approfondita dell'altra
class (1) #numeric

first_word <-  "hello"
second_word <-  "word"
first_word
second_word
paste(first_word, second_word)  #unico caracter dalle due variabili, il risultato dà solo una coppia di virgolette
paste(first_word, second_word, sep = "_") #specificare cosa usare per separare i valori delle due variabili

help("print") #vedere da quale pacchetto viene, apre una scheda sul tutorial, mostra anche come la funz viene usata
?sum

## pacchetti: alcuni solo per certi sistemi operativi. Biogna installarli
#per installare un pacchetto sul CRAN usare la funzione sottostante 
install.packages("vegan") #si fa solo una volta
library(vegan) #per richiamare il pacchetto ad ogni nuova sessione, e accedere alle funzionalità

#nome completo di una funzione
#base::sum() <-  nome completo funzione,con prima il pacchetto. Serve per le funzioni che hanno stesso nome in due pacchetti diversi.
#dplyr::select
#raster::select











