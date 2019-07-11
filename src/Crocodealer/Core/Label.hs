module Crocodealer.Core.Label
       ( -- * Data type
         LabelRule
       , Label
       ) where

newtype Name a = Name
    { unName :: Text
    }

newtype HexColor = HexColor
    { unHexColor :: Text
    }

data Label = Label
    { labelName        :: Name Label
    , labelDescription :: !Text
    , labelColor       :: HexColor
    }

data LabelRule
    = Create Label
    | Override (Name Label) (Name Label)
