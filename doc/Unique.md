[README.md](../README.md)

# Unique Features
* Does the language have any paticularly unique features?



## C#
* Pointers are missing in C#.
* Unsafe operations such as direct memory manipulation are not allowed.
* Since it's on .NET, it inherits the features of automatic memory management and garbage collection.
* Integer values  of 0 and 1 are no longer accepted as boolean values.Boolean values are pure true or false values in C# so no more errors of "="operator and "=="operator.
* (int,float, double) are not objects in java but C# has introduces structures(structs) which enable the primitive types to become objects.
* C# includes native support for the COM and windows based applications.
* C# allows the users to use pointers as unsafe code blocks to manipulate your old code.

Reference: [C# Corner](https://www.c-sharpcorner.com/article/C-Sharp-and-its-features/)

## Swift
* You can use any character you like for constant and variable names, even with emoji

[embedmd]:# (../code/Swift/unique.playground/Contents.swift Swift)
```Swift
import UIKit

let 🐶 = "dog"
let 🐮 = "cow"

print(🐶) // dog
print(🐮) // cow
```



* Assignment operator(=) doesn't return a value
```Swift
if x = y {
    // this is not valid
}

if x == y {
    // this is valid
}
```
This feature will help the programmer avoid lots of errors in their code
