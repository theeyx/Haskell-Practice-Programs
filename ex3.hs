--Exercism Q3
--Program that tells you if pangram or not



import Data.Char (toLower)

pangramOrNah :: String -> Bool
pangramOrNah msg = all (`elem` lowercase) letters
    where lowercase = map toLower msg
          letters = ['a'..'z']
