import UIKit

var dishes = ["Pasta", "Pizza", "Sushi", "Ramen"]
print (dishes[0])
print(dishes.count)

//var prices = [9.99,10.50,6.00]
//let total = prices[0] + prices[1] + prices[2]
//print("Total: \(total)")

var desserts = ["Tiramisu", "Cheesecake", "Ice Cream"]
for dessert in desserts {
    print(dessert)
}

print("You have \(desserts.count) desserts")


let calories = [0,150,80,120]
for calorie in calories{
    if calorie > 100{
        print("\(calorie) High calorie drink")
    }
}


let prices2 = [8.50, 12.00, 14.25, 6.75]
for price in prices2{
    if price > 10{
        print("\(price) cost a bit much")
    }
}


let meals = ["Salad","Steak","Burger"]
for meal in meals{
    if meal.contains("a"){
        print("Mean with an a: \(meal)")
    }
}


let mealPrices = [8.99,12.00,10.45,9.00, 125.00]
for price in mealPrices{
    if price < 10{
        print("Premium item: $\(price)")
    }
}

var counter = 0
var totalPremium = 0
for price in mealPrices{
    if price > 10{
        counter += 1
        totalPremium += Int(price)
    }
}
print("You have \(totalPremium) premium dises")
