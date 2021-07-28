--Exercism Q1
--Program that calculates if given year is a leap or not



isLeapYear :: Integer -> Bool
isLeapYear y 
    | mod y 4 == 0 && mod y 400 == 0 = True
    | mod y 4 == 0 && mod y 100 == 0 = False
    | mod y 4 == 0 = True 
    | otherwise = False
