[README.md](../README.md)

# Null/nil references
* Which does the language use? (null/nil/etc)
* Does the language have features for handling null/nil references?


## C#


## Swift

In Swift, we have optional variables which are allowed to have nil reference. If a variable is't declared as
an optional variable, it cannot have a nil reference and the compiler will show the error.

There are the same two instances where we may have a nil reference.
1. nil is a valid response
2. nil is not a valid response

## How to handle nil
* Force or automatic unwrapping and use IF ELSE block to handle it.
* Optional Binding: We can use "if let" to handle it. This is like if else in Java, the example code will show how to implement this.
* We can use "guard" to handle nil. This is a very innovative unique way in Swift.
* Null Object Pattern: We can have some default instance of the class to represent nil and let other part to handle it.
* We can also do and catch the exception like Java and handle nil. This won't be show in code example.

### [See a simple Swift example here](../../SwiftCodeForFinalProject/NilExample.swift)