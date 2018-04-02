[README.md](../README.md)


# Lambda expressions, closures or functions as types


## C#


## Swift
Lambda expression is a simplified anonymous function. It is used to express instances of single-method classes more compactly. A closure in Swift is self-contained blocks of functionality that can be passed around and used in the code. Both methods provide a concise expression to implement one process. 

Swift closure expression is created and then applied to use the function easily. Lambda expression is used to replace the use of a class. The class is used for only one instance, and only one method is contained in the class, so the code can be simplified under this condition.
In this case, instead of using an anonymous class expression, a lambda expression can be used.  

A Swift example is given below.
```Swift
func backward(_ s1: String, _ s2: String) -> Bool {
  return s1 > s2
}
var reversedNames = names.sorted(by: backward)
```
The sorted(by:) method accepts a closure, which will take two arguments of the same type as the array’s contents, and returns a Bool value to say whether the first value should be queued before or after the second value once the values are sorted. The sorting closure needs to return true if the first value should appear before the second value, and false otherwise.
The sorting closure is a function of (string, string) -> Bool. Then it is passed to the sorted(by: ) method.
