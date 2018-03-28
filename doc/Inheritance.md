[README.md](../README.md)

# Inheritance / extension


## C#


## Swift
Base Class
```Swift
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}
```
subclass
```Swift
class Bicycle: Vehicle {
    var hasBasket = false
}
```

method override
```Swift
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
```
property override
```Swift
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
```

Similar to `sealed` in C# and `final` in Java, Swift use `final` to prevent a method, property, or subscript from being overridden.