checaPalindromo :: String -> Bool
checaPalindromo x = (reverse x == x)                

checaCapicua :: (Show a) => a -> Bool
checaCapicua x = checaPalindromo (show x)

sospechosos=[ (900+10*a+b)*(900+10*c+d)| (b,d) <-[(1,9),(3,3),(7,7)], a<-[0..9],c<-[0..9]]

    
--tuAbuela x = x+1

