--1.1
--turns numbers into a list for example 123 becomes [1,2,3]
toDigits :: Integer -> [Integer]
toDigits x 
    | x <= 0 = []
    | otherwise = toDigits (div x 10) ++ [mod x 10]


--1.1.2
--reverses the previous question
toDigitsRev :: Integer -> [Integer]
toDigitsRev = reverse . toDigits


--1.2
--doubles every other number strarting from the right
--MUST USE  :set -XViewPatterns
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther (reverse -> (x:y:zs)) = doubleEveryOther (reverse zs) ++ [2*y, x]
doubleEveryOther (x:[]) = x : []
doubleEveryOther _ = []


--1.3
--sums up all the digits in a list and splits up double digits into singles
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs) 
    | x < 10 = x + sumDigits xs
    | otherwise = sumDigits(toDigits x) + sumDigits xs


--1.4
--unique credit card algorithm that if the remainder of a number that is doubled
--every other from the right and summed together is 0 then its true else false
validate :: Integer -> Bool
validate x 
    | mod (sumDigits(doubleEveryOther(toDigits x))) 10 == 0 = True
    | otherwise = False


--1.5
--tower of hanoi
type Peg = String
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 1 p1 p2 p3 = [(p1, p2)]
hanoi numDisc p1 p2 p3 = hanoi (numDisc - 1) p1 p3 p2 ++ hanoi 1 p1 p2 p3 ++ hanoi (numDisc - 1) p3 p2 p1
