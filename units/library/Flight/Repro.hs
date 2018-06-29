module Flight.Repro (repro) where
    
import Data.Ratio

-- SEE: https://github.com/ucsd-progsys/liquidhaskell/issues/1336
repro :: Ratio Int -> Bool
repro x = y == y
  where
    y = 10 / x
