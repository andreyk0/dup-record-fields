{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedLabels      #-}
{-# LANGUAGE RecordWildCards       #-}


module Main where

import           Types

import           Data.Generics.Labels
import           Lens.Micro.Platform

import           Prelude              as P


main :: IO ()
main = do
  let x = X 1 "this is x"
      y = Y 2 "this is y"

  print (x, y)

  print ("names, lenses", x ^. #name, y ^. #name)

  -- construct with record field names
  print ("record syntax", X { id = 11, name = "XX" } , Y { id = 22, name = "YY" })

  -- note that record update syntax is ambiguous
  -- e.g. (x { id = 22 }) .. but we have lenses

  -- record wildcards
  let doX X{..} = print("doX", id, name)

  doX(x & #id .~ 33)

  -- regular id is ambiguous :(
  print ("map over id", P.id <$> [0..3])

  -- nested
  let z = Z { id = x, name = y }

  print ("z lens names", z ^. #id . #name, z ^. #name . #name)
  print ("z lens ids", z ^. #id . #id, z ^. #name . #id)
