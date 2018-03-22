[README.md](../README.md)

# Classes
* Defining
* Creating new instances
* Constructing/initializing
* Destructing/de-initializing


## C#


## Swift

[embedmd]:# (../code/Swift/classDemo.playground/Contents.swift Swift)
```Swift
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
```
* Initialization is creating a instance of a class, struct, or enum.
* Deinitialization is automatically and immediately called before a class instance is deallocated. Programmers are not allowed to call it themselves.