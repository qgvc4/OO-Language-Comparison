[README.md](../README.md)

# Unique Features
* Does the language have any paticularly unique features?



## C#


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
