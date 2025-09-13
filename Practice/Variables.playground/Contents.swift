import UIKit

// variable - var
// constants - let

var greeting = "Hello, playground"
print(greeting)

let day = "wednesday"
print("Today is \(day)")// string interpolation

let dailyTemperature = 75
print( "Today is \(day) and the temperature is \(dailyTemperature) degrees")
var temperature = 80
print("The temperature in the morning is: \(temperature)")
temperature = 85
print("The temperature in the afternoon is: \(temperature)")

// ---- Game Score ----
print("--- Game Score ---")
let levelScore = 10 // int
var gameScore = 0

gameScore += levelScore
print(" The game score is: \(gameScore)")

var levelBonusScore = 10.0// bouble
levelBonusScore = 20

print("The level bonus score is: \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("The game final score is: \(gameScore)")
/*
 create a swift program that delcares three variables to store your name, age and city.
 then print and string interpolation a introduce your self
 
 */

var name = "Richard"
var age = 34
var city = "Livermore"
print("Hello my name is \(name), I am \(age) years old and I live in \(city)")

// --- Swift data types ---
let dishName:String = "pasta"
var price:Double = 9.99
var inStaoke:Bool = true // true of false
let qty:Int = 3



