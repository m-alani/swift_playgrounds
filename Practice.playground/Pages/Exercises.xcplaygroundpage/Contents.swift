//: [Previous](@previous)
import Foundation

//: __Exercise 1.__
//:
//:Earlier we used the method, remove() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to remove the last letter of a string.
var string = "stuff"
string.remove(at: string.index(before: string.endIndex))

//:Test out your discovery below by returning the last letter of the String, "bologna".
var word = "bologna"
word.substring(from: word.index(before: word.endIndex))
//: __Exercise 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]

//: __Exercise 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.

//: CharacterSet.decimalDigitCharacterSet() is used below to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.
func isNumeric (input: String) -> Bool {
    var output = true
    for char in input.unicodeScalars {
        if (!CharacterSet.decimalDigits.contains(char)) {
            output = false
        }
    }
    return output
}
//: __3a.__ Write a signature for a function that takes in a String and returns a Bool

//: __3b.__ Write a for-in loop that checks each character of a string to see if it is a member of the "digits" set. Use the .unicodeScalars property to access all the characters in a string. Hint: the method longCharacterIsMember may come in handy.

let digits = CharacterSet.decimalDigits

//: __Exercise 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]
let cleanWordsArray = dirtyWordsArray.filter( {$0.characters.count != 4} )
print("Exercise 4: ",cleanWordsArray)


//: __Exercise 5__
//:
//: Write a method, filterByDirector(), that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    static func filterByDirector(movies input: [String:String], director: String) -> [String] {
        var output = [String]()
        input.map({if ($0.value == director) {output.append($0.key)}})
        return output
    }
}

print("Exercise 5: ", MovieArchive.filterByDirector(movies: movies, director: "Christopher Nolan"))

//: [Next](@next)
