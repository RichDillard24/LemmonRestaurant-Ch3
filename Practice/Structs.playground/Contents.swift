import UIKit

/*
 structs
 custom data type that lets you group values and behaviours together.
 
 it can contain:
 -Proreties (var/contsants)
 -Methods
 -Computed Porperties
 Protocols
 
 Syntax
 
 struct StructName {
    var variableName : ElementType
    var variableName : ElementType
 }
 */

struct MenuItem {
    var name : String
    var price : Double
    var description : String
}


// exp 2

struct Dish {
    var name : String
    var price : Double
    
    func isPremium() -> Bool {
        return price > 10
    }
}

// exp 3

struct Drink{
    var name : String
    var isCold: Bool
    var size : String
}

let coffee = Drink(name: "cappuccino", isCold: false, size: "small")
print(coffee)

let tea = Drink(name: "green tea", isCold: false, size: "medium")
print(tea)

let smoothie = Drink(name: "banana smoothie", isCold: true, size: "large")
print(smoothie)

let randomDrink = Drink(name: "random", isCold: false, size: "small")
