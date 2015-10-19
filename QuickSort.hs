quicksort :: (Ord a) => [a] ->[a]
quicksort [] = []
quicksort (x:xs)=
          let menosquelaprimera=quicksort [a | a<-xs, a<=x]
              masquelaprimera=quicksort [a | a<-xs, a>x]
          in menosquelaprimera++[x]++masquelaprimera

          

