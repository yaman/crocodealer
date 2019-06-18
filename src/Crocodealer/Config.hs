module Crocodealer.Config
  ( LabelRule
  , Label
  , Package
  , Config
  ) where

data Label = Label
  { name        :: String
  , description :: String
  , color       :: String -- Data.Colour.sRGB24read can convert string specifications like "#00aaff" or "00aaff" 
  }

data LabelRule
  = Create
  | Override

type Package = String

data Config = Config
  { username        :: Maybe String
  , repository      :: Maybe String
  , labelRules      :: [LabelRule]
  , ignoredPackages :: [Package]
  }
