module AP1-Pratica where

-- Questão 01
reverso [] = []
reverso (a:x) = reverso x ++ [a]

verificar [] [] = True
verificar (a:x) (b:c) | a == b = verificar x c
                      | otherwise = False

ispalind [] = False
ispalind (a:x) = verificar (a:x) (reverso (a:x)) 

-- Questão 02
calda [] = []
calda [a] = [a]
calda (a:x) = calda x

removecalda [a] = []
removecalda (a:x) = a : removecalda x

rotdir 0 (a:x) = (a:x)
rotdir n (a:x) = rotdir (n - 1) ((calda (a:x)) ++ (removecalda (a:x)))

-- Questão 03
par (a:x) = [ x | x <- (a:x), mod x 2 == 0]

impar (a:x) = [ x | x <- (a:x), mod x 2 /= 0]

splitints ys = ((impar ys), (par ys))

-- Questão 04
divide a 1 = 1
divide a b | mod a b == 0 = 1 + divide a (b - 1)
           | otherwise = divide a (b - 1)  

primo 0 = False
primo 1 = True
primo n | divide n n > 2 = False
        | otherwise = True 

-- Questão 05
intercal [] [] = []
intercal (a:x) [] = (a:x)
intercal [] (b:c) = (b:c) 
intercal (a:x) (b:c) = [a] ++ [b] ++ intercal x c
