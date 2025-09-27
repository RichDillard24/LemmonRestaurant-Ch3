import UIKit

func greet(person: String) -> String{
    let greetings = "Hello " + person + "!"
    return greetings
}

let message = greet(person:"Alice")
print(message)



func greet2(person:String, formally: Bool)->String{
    if formally{
        return "Greetings, " + person
    }else{
        return "Hi, " + person
    }
}
print(greet2(person:"Someone", formally:false))

//func CalculateTotal(price:Double, quantity: Int)->Double{
   // return price * Double(quantity)
//}

//let total = CalculateTotal(price: 9.99, quantity: 2)
//print(total)

func deliveryTime(minutes: Int)->String{
    return "Ready in \(minutes) minutes"
}
print(deliveryTime(minutes: 15))

func calculatePrice(price:Double,)->Double{
    let tax = 1.08
    var total = price * tax
    
    return total
}
print(calculatePrice(price: 100))

func greet(name: String) -> String {

return "Hello, \(name)!"

}

print(greet(name: "Alice"))


