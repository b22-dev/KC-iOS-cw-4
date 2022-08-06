import UIKit

var name = "Ahmed"
var birthdayYear = 2006
var currentYear = 2022
var age : Int

age = currentYear - birthdayYear

print("Hello my name is \(name) and my age is \(age)")

if age <= 19 && age >= 13 {
    print(" نعم يمكنك المشاركة في الكويت تبرمج")
}
    else {
        print("لايمكنك المشاركة في الكويت تبرمج")
    }


var textName = "8"
var number = 4
var doubleNumb : Double


doubleNumb = (Double(textName) ?? 0) + Double(number)
