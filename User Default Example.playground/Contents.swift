import UIKit

let defaults = UserDefaults.standard

defaults.set(0.24, forKey: "Volume")
let volume = defaults.float(forKey: "Volume")
//Always sets volume at fixed level

defaults.set(true, forKey: "Music On") // so when user opens app music is always playing
defaults.set("Angela", forKey: "PlayerName")

//track user behavior
defaults.set(Date(), forKey: "AppLastOpenedByUser")

let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")


let array = [1 , 2, 3]
defaults.set(array, forKey: "myArray")

let myArray = defaults.array(forKey: "myArray") as! [Int]

let dictionary = ["name": "Angela"]
defaults.set(dictionary, forKey: "myDictionary")

let myDictionary = defaults.dictionary(forKey: "myDictionary")
