import UIKit

// ARRAYS

let dishes = ["pizza", "pasta", "salad"]

print(dishes[1])

var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders.count)


// challenge

let dessert = ["ice cream", "cupcake", "cheesecake", "apple pie"]

print(dessert[2])

// dictionaries

// define a dictionary with prices

let menuPrices: [String: Double] = ["Pizza":12.99, "Salad": 7.99, "Pasta": 9.99]

print(menuPrices["Pizza"]!)

var stock: [String:Double] = ["pizza": 5.00, "pasta": 2.00, "salad": 6.00]

stock["pizza"] = 4.5

print(stock)

let drinkMenu: [String:Double] = ["Coke": 1.99, "Pepsi": 1.99, "Sprite": 1.99]

print(drinkMenu["Coke"]!)

var ingredients = ["Tomato":3, "Cheese":2,"Pepperoni":10,"Mushrooms":8]
// for in loop
for(item,qty)in ingredients.sorted(by: {$0.value < $1.value}){
    print("\(qty): \(item)")
}


for dish in dishes {
    print("\(dish)")
}
// challenge 3

let meals = ["Burger":7.99, "Salad":5.99]
for (meal,price) in meals{
    print("The price of \(meal) is $\(price)")
}

let prices2 = [8.0 ,12.5, 7.0, 15.0]
for price in prices2{
    print(price)
}

let premium = prices2.filter{ $0 > 10 }
print(premium)

let menu3 = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]

let veggie = menu3.filter{ $0.contains("Veggie") || $0.contains( "fruit")}
print (veggie)
