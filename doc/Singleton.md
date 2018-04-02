[README.md](../README.md)


# Singleton
* How is a singleton implemented?
* Can it be made thread-safe?
* Can the singleton instance be lazily instantiated?

## C#


## Swift

The purpose of singleton is to control object creation, and thus limiting the number of instance to only one. 
When calling the getInstance() method, the only object created during initialization will be passed to the program. An example using the singleton to implement the main program in Swift is:
```Swift
final class Singleton {

    // Can't init is singleton
    private init() { }

    // MARK: Shared Instance

    static let shared = Singleton()

    // MARK: Local Variable

    var emptyStringArray : [String] = []

}
```
Basically the init() function is made private so that a new instance cannot be created from outside.

#### Can it be made thread-safe?
In Swift, the example given above is thread-safe by the definition of let.
#### Can the singleton instance be lazily instantiated?
In Swift, the lazy coding can be easily achieved. This approach above supports lazy initialization because Swift lazily initializes class constants and variables automatically.
