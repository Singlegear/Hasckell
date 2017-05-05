module Listapf where

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
fibonacci 0 = 1
fibonacci n = fibonacci(n - 1) + fibonacci(n - 2) 
       
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
onlyman n (a:x) | frequencia n (a:x) == 1 = True        
                | otherwise = False

-- Questão 11
maioresque n [] = []
maioresque n (a:x) | n < a = a : maioresque n x
                   | otherwise = maioresque n x 

-- Questão 12
concatenar [] y = y
concatenar (a:x) y = a : concatenar x y 

--Questão 13
calda (a:x) = x

-- Questão 14
corpo [a] = []
corpo (a:x) = a : corpo x

-- Questão 15
unique [] = []
unique (a:x) | frequencia a (a:x) == 1 = a : unique x
             | otherwise = unique x

-- Questão 16
menores n (a:x) = [x | x <- a:x, x < n]

-- Questão 17
alter_aux [a] = a
alter_aux (a:x) = a ++ alter_aux x

alter n = alter_aux [ [x, (-x)] | x <- [1..n]]
