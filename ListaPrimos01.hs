{-Otro intento diferente del casero para obtener un cedazo
de Eratóstenes. Le damos un entero y debe entonces poder darnos
los primos menores o iguales a ese entero -}

listaprimos :: (Integral a) => a -> [a]
listaprimos 0 = []
listaprimos 1 = []
listaprimos 2 = [2]
listaprimos n = [k | k<-[2..n], k `elem` listaprimos (n-1)]
--    where q = round (sqrt (fromIntegral n))


-- aver, te rindes, prueba esto y desmenuzalos
{- Obtenido de RosettaCode -}

--primesTo :: (Integral a) => a-> a
primesTo 1 = []
primesTo 2 = [2]
primesTo m = 2 : eratos [3,5..m] where
   eratos (p : xs) 
      | p*p > m   = p : xs
      | otherwise = p : eratos (xs `minus` [p*p, p*p+2*p..m])
                                    -- map (p*) [p,p+2..]  
                                    -- map (p*) (p:xs)     -- (Euler's sieve)

{-Observa el uso de case en esta funcion minus -}
minus a@(x:xs) b@(y:ys) = case compare x y of
-- case de lo que resulte compare, que puede dar LT, EQ o GT...
         LT -> x : minus  xs b
         EQ ->     minus  xs ys
         GT ->     minus  a  ys
minus a        b        = a 
