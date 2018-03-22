//: Playground - noun: a place where people can play

import UIKit

class Student {
    var name: String
    var id: Int
    // initializing
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
    deinit {
        // perform the deinitialization
    }
}

var student = Student(name: "John", id: 1)
