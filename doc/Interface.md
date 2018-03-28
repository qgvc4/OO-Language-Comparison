[README.md](../README.md)

# Interface Comparison
* What does the language support?
* What abilities does it have?
* How is it used?

## C#


## Swift
#### Swift support Protocols
In Swift, the equivalent of c# interface is called protocal. A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.

#### Protocol Syntax
``` Swift
protocol SomeProtocol {
    // protocol definition goes here
}
```
multiple protocols can be listed together
```Swift
struct SomeStructure: FirstProtocol, AnotherProtocol {
    // structure definition goes here
}
```
Superclass is listed before protocals
```Swift
class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
    // class definition goes here
}
```
