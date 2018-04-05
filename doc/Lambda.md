[README.md](../README.md)


# Lambda expressions, closures or functions as types


## C#
A lambda expression is an anonymous function that you can use to create delegates or expression tree types. By using lambda expressions, you can write local functions that can be passed as arguments or returned as the value of function calls. Lambda expressions are particularly helpful for writing LINQ query expressions.

A C# example is given below.
```CS
delegate int del(int i);  
static void Main(string[] args)  {  
    del myDelegate = x => x * x;  
    int j = myDelegate(5); //j = 25  
}  
```


A closure in C# takes the form of an in-line delegate/anonymous method. A closure is attached to its parent method meaning that variables defined in parent's method body can be referenced from within the anonymous method. There is a great Blog Post here about it.


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
