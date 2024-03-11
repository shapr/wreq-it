module Main where

import qualified MyLib

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    rb <- MyLib.getPS
    print rb
