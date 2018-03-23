//: Playground - noun: a place where people can play

import UIKit

class Square {
    var length: Double
    var area: Double {
        return length * length
    }
    init(length: Double) {
        self.length = length
    }
}

var squareA = Square(length: 4.0)
print(squareA.length) // 4.0 this is a storeed property
print(squareA.area) // 16.0 this is a computed property
