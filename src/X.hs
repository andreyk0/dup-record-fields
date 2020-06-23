{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}

module X where

import           GHC.Generics

data X = X
    { id   :: Int
    , name :: String
    }
    deriving (Generic, Eq, Show)
