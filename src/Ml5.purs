module Ml5 where

import Data.Unit (Unit)
import Effect.Uncurried as EU
import Effect (Effect)

type DataPoint = { 
    x :: Int, 
    y  :: Int
}

type Options = {
    k :: Int,
    maxIter :: Int,
    threshold :: Number
}

foreign import _kmeans :: forall a. EU.EffectFn3 (Array DataPoint) Options (EU.EffectFn1 a Unit) Unit

kmeans :: (Array DataPoint) -> Options -> EU.EffectFn1 Unit Unit -> Effect Unit
kmeans d options cb = EU.runEffectFn3 _kmeans d options cb