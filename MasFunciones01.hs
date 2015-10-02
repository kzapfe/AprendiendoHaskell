
calcBMis :: (RealFloat a) => [(a,a)] ->  [a]
 {- Patron tiene que ser RealFloat, tiene que tomar una lista de duplas
 y devolver una lista -}
calcBMis xs=[bmi | (w, h) <- xs, let bmi = w/h^2]
{- toma un par (w, h) del argumento, calcula el bmi y devuelve el valor en
la lista -}


chanfles :: [a]->a
chanfles xs= case xs of [] -> error "¡Tu abuela!"
                        (x:_) -> x
   
         
{- Intentemos reescribir la funcion describeList del libro 
Diste mas vueltas (un par de funciones extra pero funciono!
-}
describeList :: [a] -> String
describeList xs = "La lista es "++ case compare (length xs) 1 of
             LT -> " vacia"
             EQ -> " unitaria"
             GT -> " larguita"
             

