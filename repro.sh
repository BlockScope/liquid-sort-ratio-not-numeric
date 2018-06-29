#!/bin/sh

#set +v

stack exec liquid -- "--ghc-option=-fplugin Data.UnitsOfMeasure.Plugin" units/library/Flight/Units.hs units/library/Flight/Ratio.hs units/library/Flight/Repro.hs
