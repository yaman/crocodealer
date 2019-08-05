module Crocodealer.Config
       ( Repo (..)
       , Config (..)
       ) where

import Crocodealer.Core.Label

newtype Repo = Repo
    { unRepo :: Text
    }

data Config = Config
    { username            :: Maybe Text
    , repository          :: Maybe Text
    , labelRules          :: [LabelRule]
    , ignoredRepositories :: [Repo]
    }
