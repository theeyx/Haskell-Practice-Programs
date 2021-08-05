--Exercism Q5
--Collatz Conjecture Calculator



collatz :: Integer -> Maybe Integer
collatz x
    | x <= 0 = Nothing
    | otherwise = Just $ collatz' x

collatz' :: Integer -> Integer
collatz' x
    | x == 1 = 0
    | mod x 2 == 0 = 1 + collatz' (div x 2)
    | otherwise = 1 + collatz' (3 * x + 1)
