module Listahaskell where

--Questão 01
menor x y
          | x <= y = x
          |otherwise = y

--Questão 02
menor3 x y z
            |(x < y)&&(y < z) = x
            |y < z = y
            |otherwise =z 

--Questão 03
fatorial 0  = 1
fatorial x  = x * fatorial ( x - 1)


--Questão 04
fibonacci n
            | n == 0 = 0
            | n == 1 = 1
            |otherwise = fibonacci(n - 1) + fibonacci(n - 2) 
       
--Questão 05
find 1 (a:x) = a
find n (a:x) = find(n - 1) x

--Questão 06
pertence n [] = False
pertence n (a:x)
                |n == a = True
                |otherwise = pertence n x

--Questão 07
size [] = 0
size (a:x) = 1 + size x

--Questão 08
cmaior [a] = a
cmaior (a:x)
            |a > cmaior x = a
            |otherwise = cmaior x

--Questão 09
frequencia n [] = 0
frequencia n (a:x)
                  |n == a = 1 + frequencia n x
                  |otherwise = frequencia  n x

--Questão 10
onlyman n [] = 0
onlyman n (a:x) | frequencia == 1 = True        
                | otherwise = F

