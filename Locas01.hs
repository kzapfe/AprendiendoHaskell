-- Fijate como puedes definir primero la funcion de alto nivel
-- y luego en la que esta basada y el compilador NO se queja.
-- sera por que es huevon?
chanflear x y z = (cuadrar x y) + z
doblararg x = x + x
cuadrar x y = x*x + y*y

supos x = if x>98
then doblararg x
else cuadrar x x


supos' x = ( if x > 98 then doblararg x else cuadrar x x)+1

-- una definicion en Haskell es una funcion que no toma
-- ningun parametro. Nota: no puede empezar con mayusculas ( pero puede
-- tener tildes)
conanO'brain = "¡Hola, soy Conan O'Brain!"          


