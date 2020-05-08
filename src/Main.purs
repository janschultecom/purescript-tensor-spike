module Main where

import Ml5 (DataPoint, Options, kmeans)
import Prelude (Unit, bind, ($))

import Effect (Effect)
import Effect.Console (log)
import Effect.Uncurried (mkEffectFn1)

dataPoints :: Array DataPoint
dataPoints = [{x: 0, y:0}, {x:0, y:1},{x:1, y:0}, {x:1, y:1}]

options :: Options
options = {
  k :  3,
  maxIter: 4,
  threshold: 0.5
}

main :: Effect Unit
main = do
  _ <- kmeans dataPoints options (mkEffectFn1 $ \_ -> log "bla")
  log "🍝"
