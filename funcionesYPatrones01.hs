--Patern Matching en funciones.

-- funcion recursiva para factoriales
--Primero: los tipos. Escogemos un a de la clase de tipos Integral
-- que engloba a Int y a Integer
-- le decimos que una vez solo acepte eso, para cada a valido escupa un a
-- del mismo tipo.
factorial :: (Integral a) => a -> a
-- despues de definimos las reglas.
factorial 0 = 1
factorial n = n * factorial (n - 1)


--Tomamos doss dupla de a's que tienen que ser clase Num
-- y escupimos una dupla del mismot tipo
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- una version de head
-- acepta una lista de cualquier madre y devuelve algo del tipo de los elmtos.
head' :: [a] -> a
head' [] = error "¡Hey, no puedes utilizar head con una lista vacía!"
--el patron es x:cualquier mamada, dame x.
head' (x:_) = x
--Si queremos ligar varias variables, incluyendo la variable vetealamerga,
-- hay que usar parentesis.


-- observa.
tell :: (Show a) => [a] -> String
tell []       = "La lista está vacía"
tell (x:[])   = "La lista tiene un elemento: " ++ show x
tell (x:y:[]) = "La lista tiene dos elementos: " ++ show x ++ " y " ++ show y
tell (x:y:_)  = "La lista es larga. Los primeros dos elementos son: " ++ show x ++ " y " ++ show y

-- Hay algo mal con tu pinche has
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "Tienes infrapeso ¿Eres emo?"
    | bmi <= 25.0 = "Supuestamente eres normal... Espero que seas feo."
    | bmi <= 30.0 = "¡Estás gordo! Pierde algo de peso gordito."
    | otherwise   = "¡Enhorabuena, eres una ballena!"
    
 
