module Flight.Repro (repro) where

import Data.Ratio

{-@ embed Ratio * as int @-}
{-@ repro :: {v:Ratio Int | v /= 0} -> Bool @-}

-- SEE: https://github.com/ucsd-progsys/liquidhaskell/issues/1336
repro :: Ratio Int -> Bool
repro x = y == y
  where
    y = 10 / x
