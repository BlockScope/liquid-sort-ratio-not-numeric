{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

module Flight.Units where

import Data.UnitsOfMeasure (u)

[u| s, m |]

newtype NominalLaunch =
    NominalLaunch Rational
    deriving (Eq, Ord, Show)

{-@ embed Ratio * as int @-}
{-@ launchValidity1 :: _ -> _ @-}
launchValidity1 :: NominalLaunch -> Bool
launchValidity1 _ = False
