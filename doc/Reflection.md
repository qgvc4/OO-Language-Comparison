[README.md](../README.md)


# Reflection
* What reflection abilities are supported?
* How is reflection used?

## C#
**Reflection** objects are used for obtaining type information at runtime. The classes that give access to the metadata of a running program are in the **System.Reflection** namespace.

The **System.Reflection** namespace contains classes that allow you to obtain information about the application and to dynamically add types, values, and objects to the application.

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_reflection.htm)

## Swift
**Mirror**, a struct in Swift for reflection
- Create a Mirror
```Swift
public init(reflecting subject: Any)
```
```Swift
let aMirror = Mirror(reflecting: someClassName) 
```