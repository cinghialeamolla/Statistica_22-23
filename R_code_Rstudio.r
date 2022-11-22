

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


### QUARTA LEZIONE




### QUINTA LEZIONE




### SESTA LEZIONE

m <- matrix(1:16, nrow=4)  #crea una matrice di dati
rownames(m) <- c("r1", "r2", "r3", "r4")  #nominare le righe delle matrici
colnames(m) <- c("c1", "c2", "c3", "c4")  #nominare le colonne delle matrici
m
m+2
m*2

n <- matrix(8:15, nrow=4)  #crea una matrice di dati
n
m %*% n  #operazione tra matrici

vec <- 1:9
sum(vec)
sum(m)  #somma i valori
mean(m) #calcola la media
median(m) #trova la mediana
sd(m) #
rowSums(m)    #per sommare i valori lungo le righe
colSums(m)    #per sommare i valori lungo le colonne
rowMeans(m)   #media dei valori delle singole righe
colMeans(m)   #media dei valori delle singole colonne

m[1, ]  #per estrarre la prima riga
sum(m[1, ])  #somma la I riga

#Fattori: sono tipi speciali di vettori, possono essere ORDINATI o no. Vettori "integer" 

vec <- c("Tree", "Grass", "Forb", "Grass", "Tree")    #crea un vettore
vec   #mostra gli elementi del vettore, tra virgolette
fct <- factor(vec)    #crea un fattore 
fct   #mostra i valori del vettore senza virgolette, e li "ordina" in "levels"
#levels: modalità/valori che può assumere una variabile; nel nostro vettore "Tree, Grass e Forb"

class(fct)  #fattore
typeof(fct)   #integer
as.integer(fct)   #assegna livelli ai valori, mostrando i label (etichette) ad essi associate.
# l'ordine automatico è quello alfabetico, a meno che non ne assegnamo uno diverso noi

lev <- c("Tree", "Grass", "Forb", "Liana")        #definisce le modalità
fct <- factor(vec, levels = lev)       #assegnare le possibili modalità ai fattori
fct

vec1 <- c("Tree", "Grass", "Macrophyte")   #nuovo vettore
fct1 <- factor(vec1, levels=lev)    #trasformazione in vettore con modalità assegnate
fct1    # "Macrophyte" non è stato definito, quindi il fattore restituisce <NA>

summary(fct)    #vede le frequenze delle modalità
levels(fct)    #vede le possibili modalità

##fattori ordinati:
vec <- c("High Temp", "Low Temp", "High Temp","Low Temp", "Medium Temp")
fct <- factor(vec, ordered = TRUE, levels = c("Low Temp", "Medium Temp", "High Temp")) #creare un vettore con l'ordine
fct

#LIST                                 #sono collezioni ordinate di valori
#Vettori, Matrici, ecc    

student <- "piero"      #crea una lista
scores <- c(27, 29, 23, 30)   #vettore numerico in lista
is_enrolled <- TRUE   #
my_list <- list(student, scores, is_enrolled)  #crea la lista
my_list

# [[1]]           #indice tra doppia parentesi quadra, indica i vari vettori
# [1] "piero"

# [[2]]
# [1] 27 29 23 30   #vettore

# [[3]]
# [1] TRUE

lenghth(my_list)   #lunghezza lista (3 vettori)
class(my_list)
typeof(my_list)
str(my_list)   #mostra gli elementi che compongono la lista

list_names <- c("student", "scores", "is_enrolled")                  #dare un nome alle liste
names(my_list) <- list_names                                         #assegna il vettore list_names alla lista

c(a=1, b=2)     #crea vettore con nomi assegnati

#si possono definire i nomi associati anche manualmente
list(people=student, grades=scores, is_enrolled=is_enrolled)

my_list[1]   
class(my_list[1])  #estraggo una o più lista che contiene le componenti selezionate (non estrae una componente)
my_list[[1]]       #estrae una componente da una lista 
class(my_list[[1]])  #

my_list["student"]        #estrae 

my_list$student #si riferisce a una singola componente da una lista
class(my_list$student)
my_list[c(1,3)]

student <- "piero"
scores <- c(t1=27, t2=29, t3=23)
is_enrolled <- FALSE
my_list <- list(student = student, scores = scores, is_enrolled = is_enrolled)
my_list
str(my_list)        #non so cosa fa

my_list[[c(2,3)]] #estrae qualcosa
my_list[[c("scores","t3")]] #estrae la stessa cosa
my_list[[2]]   #

#modificare le liste
my_list[[2]][3] <- 24    #cambia il terzo valore della seconda lista
my_list

my_list[["course"]] <- "natural sciences"  #aggiunge una nuova componente dopo l'ultimo elemento
my_list  
my_list$internship <- FALSE
my_list
my_list[[6]] <- "B2"   #usando un numero da 1 a 5 andrebbe a sostituire una lista presente

names(my_list)[6] <- "english certification"  #assegna un nome alla sesta lista


#rimuovere gli errori (liste vuote)

my_list <- my_list[-7]  #indice negativo sulla lista da eliminare
my_list[[-7]] <- NULL   #usare null sulla lista da eliminare

#concatenare le liste
lst_1 <- list(a1 = 1:19, b1 = LETTERS[1:3])
lst_2 <- list(a2 = c(2.2, 3.1), b2 = c(TRUE, FALSE))
                                                      #####NON HO IDEA DI COSA SIA #######
lst_3 <- c(lst_1, lst_2)
str(lst_3)

lst_4 <- list(c1 = lst_1, c2 = lst_2)
str(lst_4)

#DATAFRAME: struttura bidimensionale che può contenere qualsiasi vettore, con lo stesso tipo sulle colonne e tipi diversi sulle righe
#un dataframe è una lista speciale (come una matrice è un tipo particolare di vettore)
#dataframe:
#1) ogni componente è un qualsiasi tipo di vettore (anche fattore) e corrisponde a una lista
#2) le colonne/componenti DEVONO avere tutte nomi
#3) le colonne devono avere tutte la stessa lunghezza

#Creare un dataframe
dat <- data.frame(a = 1:10, b = LETTERS[1:10], c = rep(c(TRUE, FALSE), 5))
dat
dim(dat)
nrow(dat)          #righe
ncol(dat)         #colonne
class(dat)        #classe
typeof(dat)        #tipo
str(dat)          #dice osservazioni e variabili
names(dat)         #dice i nomi delle colonne
names(dat) <- c("col1", "col2", "col3")       #cambiare i nomi

###SETTIMA LEZIONE







#### OTTAVA LEZIONE

#Dataframes: sono dati bidimensionali e possono avere qualsiasi tipo di dato, con colonne omogenee all'interno (che possono contenere vettori atomici o liste).
#diverse colonne possono avere tipi di dati diversi
#Dataframes sono delle liste di vettori (ogni colonna è una componente della lista)
#sono un sottinsieme delle liste perchè ciascuna colonna deve avere un nome.

#Creare un dataframe
dat <- data.frame(a = 1:10, b = LETTERS [1:10], c = rep(c(TRUE, FALSE), 5))

str(dat)          #dice osservazioni (righe) e variabili (colonne)
names(dat)         #dice i nomi delle colonne
names(dat) <- c("col1", "col2", "col3")       #cambiare i nomi

#indicizzare un dataframe (accedere a singole righe, colonne, ottenere vettori o estrarre dataframe)
dat[1, ]   #per estrarre una sola riga, con tutte le colonne, una lista
dat[2:3, ] #per estrarre quelle 2 righe

dat[ , 2]   #per estrarre la seconda COLONNA; è un VETTORE di tipo caracter
dat[ , 2:3]   #per quelle 2 colonne


dat[2]      #estrae una lista che contiene SOLO quella componente

dat[[2]]    #estrae SOLO quella componente, si ottiene un vettore

dat$col2    #fanno la stessa cosa
dat[["col2"]]

dat[1, 1] #
dat[1:2, 2:3]     #

dat$col1 <= 5
dat[dat$col1 <= 5, ]       #

###Modificare un dataframe: si combina l'indicizzazione con l'assegnazione

dat$col4 <- letters[1:10]     #assegnare una nuova colonna
dat

dat$col4 <- NULLM     #eliminare la colonna
dat

dat[1,1] <-10         #per cambiare un singolo valore
dat

#Unide dataframe
dat_1 <- data.frame(genus = c("Silene", "Pinus"), has_flower = c(TRUE, FALSE), n = c(10, 2))
dat_2 <- data.frame(genus = c("Malus"), has_flower = c(TRUE), n = c(1))

dat_3 <- rbind(dat_1, dat_2)        #unire dati
dat_3

is_herbaceous <- c(TRUE, FALSE, FALSE)
is_herbaceous
dat_4 <- cbind(dat_3, is_herbaceous)   #dataframe con 3 righe e 4 colonne

names(dat_4)[4] <- "is_perennial"     #modificare SOLO nome colonna





















