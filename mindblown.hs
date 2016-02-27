module Main where

infinitListOfIntsFrom n = n : (infinitListOfIntsFrom (n+1))
myInfinitList = infinitListOfIntsFrom 1
first10 = take 10 myInfinitList

-- Fizz Buzz
fizzBuzz n | n `mod` 15 == 0                   = "FizzBuzz"
           | n `mod` 3 == 0                    = "Fizz"
           | n `mod` 5 == 0                    = "Buzz"
           | otherwise                         = show n

result = map fizzBuzz [1..100]

main = putStrLn (show result)