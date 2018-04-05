[README.md](../README.md)


# Singleton
* How is a singleton implemented?
* Can it be made thread-safe?
* Can the singleton instance be lazily instantiated?

## C#
The singleton pattern is one of the best-known patterns in software engineering. Essentially, a singleton is a class which only allows a single instance of itself to be created, and usually gives simple access to that instance.
Following is an example which uses singleton to implement a simple thread-safety program.
```cs
public sealed class Singleton
{
    private static Singleton instance = null;
    private static readonly object padlock = new object();

    Singleton()
    {
    }

    public static Singleton Instance
    {
        get
        {
            lock (padlock)
            {
                if (instance == null)
                {
                    instance = new Singleton();
                }
                return instance;
            }
        }
    }
}
```
Following is an example with fully lazy instantiation.
```cs
public sealed class Singleton
{
    private Singleton()
    {
    }

    public static Singleton Instance { get { return Nested.instance; } }
        
    private class Nested
    {
        // Explicit static constructor to tell C# compiler
        // not to mark type as beforefieldinit
        static Nested()
        {
        }

        internal static readonly Singleton instance = new Singleton();
    }
}
```
Reference: [C# in Depth](http://csharpindepth.com/Articles/General/Singleton.aspx#unsafe)

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
