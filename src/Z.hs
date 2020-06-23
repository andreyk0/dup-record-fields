{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}

module Z where

import           GHC.Generics

import           X
import           Y


data Z = Z
    { id   :: X
    , name :: Y
    }
    deriving (Generic, Eq, Show)
