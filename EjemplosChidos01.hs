--Definir listas como conjuntos de secundaria:

saaale = [ x*x*x | x<-[0,7..140], x `mod` 17 == 11]
--- los numeros al cubo de la lista de multiplos de 7 hasta el 140
--- tales que  x modulo 17 == 11. (solo sale uno aqui)


--Funcion que toma una lista de numeros y da una lista de otra cosa

boomBangs xs = [ if (x `mod` 3 /= 0 ) then "Bum" else "chack!" | x <- xs]

-- Funcion que toma una lista, y la escupe en la variable "me vale mergas" _
-- que basicamente no es una variable...
largo xs= sum [1 | _ <-xs] 

listadelistas = [[1,3,5,2,3,1,2,4,5],
                 [1,2,3,4,5,6,7,8,9],
                  [1,2,4,2,1,6,3,1,3,2,3,6]]

--funcion que se aplica EN los elementos de los elementos
--de una lista de listas.
funchar xxs = [ [ x | x <- xs, even x ] | xs <- xxs]

triangulos=[ (a,b,c) | a <-[1..1000], b<-[1..1000], c<- [1..10]]

triangulospitagoras=[ (a,b,c) | c <-[1..10], b<-[1..c], a<- [1..b], c^2==a^2+b^2]




