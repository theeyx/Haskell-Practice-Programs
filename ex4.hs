--Exercism Q4
--Program that emulates an average teenager response



import Data.Char
import Data.List

responseFor:: String -> String
responseFor "" = "Fine. Be that way!"
responseFor x
    | isYell && isQuestion = "Calm down, I know what I'm doing!"
    | isQuestion = "sure."
    | isYell = "Whoa, chill out!"
    | otherwise = "Whatever."
    where
        isQuestion = "?" `isSuffixOf` x
        isYell = not (any isLower x) && any isLetter x
