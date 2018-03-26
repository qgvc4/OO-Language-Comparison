[README.md](../README.md)

# Errors and exception handling


## C#


## Swift
In Swift, errors are represented by values of types that conform to the Error protocol.
This empty protocol indicates that a type can be used for error handling.
Swift enumerations are particularly well suited to modeling a group of related error conditions.

Here is an example enumerations
```Swift
enum ExampleError: Error {
    case Error1
    case Error2(someUsefulInformation: Int)
    case Error3
}
```
Throwing an error lets you indicate that something unexpected happened and the normal flow of execution can’t continue. You use a *throw* statement to throw an error.

```Swift
throw ExampleError.Error2(someUsefulInformation: 3)
```

### Handling Errors
There are 4 ways in Swift to handle errors.
1. We can propagate the error from a function to the scope from which it is called.
2. wrapping the part which may throw errors with do-catch block.
3. handle the error as an optional value
4. assert that the error will not occur.

#### Propagating using Throwing
A function marked with throws is called a throwing function. If the function specifies a return type, you write the throws keyword before the return arrow (->).
A throwing function propagates errors that are thrown inside of it to the scope from which it’s called.

```Swfit
func canThrowErrors() throws -> String

func cannotThrowErrors() -> String
```


#### Handling errors by Do-Catch
We use a do-catch statement to handle errors by running a block of code. If an error is thrown by the code in the do clause, it is matched against the catch clauses to determine which one of them can handle the error.

```Swfit
do {
    try expression
    statements
} catch pattern 1 {
    statements
} catch pattern 2 where condition {
    statements
}
```

#### Handling errors as an optional value
You use try? to handle an error by converting it to an optional value. If an error is thrown while evaluating the try? expression, the value of the expression is nil.

The below examples are doing the same thing.

##### Example1
```Swift
let x = try? someThrowingFunction()
```

```Swift
let x: Int?
do {
    x = try someThrowingFunction()
} catch {
    x = nil
}
```
The value of x will be nil if an exception occurs

#### Assert that an error will not occur (Disabling Error Propagation)

Sometimes we know a statement may cause an error but we know for sure it won't, we can use try! to do an assertion.

```Swift
let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
```

The above example uses the LoadImage function. We know sometimes the images may not exist so it may throw an imageNotFoundError
but we also know the images are inside the resources folder which indeed has the images we want, we can disable error propagation.

If any errors do occur during the runtime, we will get a runtime error and the application will be ceased.

### Cleanup actions
In Swift, we can use _**defer**_ to execute a set of statements just before code leaves the current scope. This is like
the finally block in Java where we may want to close the stream whether the code executed smoothly or an error was thrown.


