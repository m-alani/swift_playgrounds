//: [Previous](@previous)
import Foundation

// TODO: Implement placeFirstLetterLast() here!
func placeFirstLetterLast(of input: String) -> String {
    return input[input.endIndex] + input.substring(from: input.startIndex e+ 1)
}
//: [Next](@next)
