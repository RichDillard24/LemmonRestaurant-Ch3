import UIKit

/*
 if: allows the program to evaluate multiple conditions
 
 if condition {
    // code if condition is true
 } else {
    // code if condition is false
 */

let waterTemperature = 92

if waterTemperature >= 100 {
    print("The water is boiling")
} else {
    print("The water is not boiling")
}

// exp 2

var position = 1

if position == 1{
    print("you came first")
}else if position == 2{
    print("you came second")
} else {
    print("you did not finish in the top 2")
}

//exp 3  && logical and Operator

var temp = 69

if temp >= 68 && temp <= 72 {
    print("The temperature is just right")
} else {
    print("the temperature is too hot or cold")
}


//exp 4 || or logical operator

var mainPower = false
var batteryPower = true

if mainPower == true || batteryPower == true {
    print("I can use my phone")
} else {
    print("Better find a charger")
}
