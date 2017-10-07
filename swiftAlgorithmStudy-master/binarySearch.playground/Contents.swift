//: Playground - noun: a place where people can play

import UIKit

func binarySearch (array: [Int], targetValue: Int) -> Int? {
    var min = 0
    var max = array.count - 1
    var guess: Int
    
    while (min <= max) {
        guess = (max + min) / 2

        if (array[guess] == targetValue) {
            return guess
        } else if (array[guess] < targetValue) {
            min = guess + 1
        } else {
            max = guess - 1
        }
    }
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(array: numbers, targetValue: 11)