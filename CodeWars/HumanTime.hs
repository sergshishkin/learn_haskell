--Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)
--
--    HH = hours, padded to 2 digits, range: 00 - 99
--    MM = minutes, padded to 2 digits, range: 00 - 59
--    SS = seconds, padded to 2 digits, range: 00 - 59
--
--The maximum time never exceeds 359999 (99:59:59)
--
--You can find some examples in the test fixtures.
--

module HumanTime where

humanReadable :: Int -> String
humanReadable x = toString h ++ ":" ++ toString m ++ ":" ++ toString s
                 where (h, r)  = x `divMod` 3600
                       (m, s) = r `divMod` 60 

toString :: Int -> String
toString x | x == 0    = "00"
           | x < 10    = '0' : show x
           | otherwise = show x