{-# LANGUAGE OverloadedStrings #-}

module MyLib where

import Control.Lens
import Data.Aeson
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BSL
import qualified Data.Map as Map
import Network.Wreq

someFunc :: IO ()
someFunc = putStrLn "someFunc"

getPS :: IO BSL.ByteString
getPS = do
    result <- get "http://private.storage"
    pure $ result ^. responseBody
