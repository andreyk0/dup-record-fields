{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}

module Y where

import           GHC.Generics

data Y = Y
    { id   :: Int
    , name :: String
    }
    deriving (Generic, Eq, Show)
