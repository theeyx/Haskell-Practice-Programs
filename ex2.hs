--Exercism Q2
--Program that calculates what age you are based on planet



module SpaceAge (Planet(..), ageOf) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars 
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOf :: Planet -> Float -> Float
ageOf planet secs =  case planet of 
    Mercury -> local 0.2408467
    Venus -> local 0.61519726
    Earth -> local 1.0
    Mars -> local 1.8808158
    Jupiter -> local 11.862615
    Saturn -> local 29.447498
    Uranus -> local 84.016846
    Neptune -> local 164.79132
    where
        earthSecs = 31557600
        local ratioYears = (secs / earthSecs) / ratioYears
    
