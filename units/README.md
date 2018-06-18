With this refinement annotation;

```
newtype NominalLaunch = NominalLaunch Rational deriving (Eq, Ord, Show)

{-@ launchValidity1 :: _ -> _ @-}
launchValidity1 :: NominalLaunch -> Bool
launchValidity1 _ = False
```

An attempt at a minimal reproduction of the error [The sort (GHC.Real.Ratio int) is not numeric](https://github.com/ucsd-progsys/liquidhaskell/issues/1336) fails to reproduce the error;

```
  elaborate solver failed on:
      VV##F##372 /= 0
  with error
      The sort (GHC.Real.Ratio int) is not numeric
```

Instead the result is `RESULT: SAFE`.

```
liquid-sort-ratio-not-numeric> ./repro.sh
LiquidHaskell Version 0.8.2.4
Copyright 2013-18 Regents of the University of California. All Rights Reserved.


**** DONE:  A-Normalization ****************************************************


**** DONE:  Extracted Core using GHC *******************************************


**** DONE:  Transformed Core ***************************************************

Working 100% [=================================================================]

**** DONE:  annotate ***********************************************************


**** RESULT: SAFE **************************************************************
```
