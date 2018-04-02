[README.md](../README.md)

# Funtional programming
* Does the language support functional programming?


## C#

Functions are first-class citizens in C#, which means they can be used as input or output for other functions.

```cs
Func<int, bool> isMod2 = x => x % 2 == 0;
var list = Enumerable.Range(1, 10);
var evenNumbers = list.Where(isMod2);
```
Reference: [Introduction to functional programming with C#](https://dev.to/naveen/introduction-to-functional-programming-with-c)

## Swift


Swift can take function as input

```Swift
func saveMeFromMadness(elements: [Int]) -> Int {
 var sum = 0
 for element in elements {
  sum += element
 }
 return sum
}
```
We define a function  as inline closure, which makes the expression very concise and powerful. Swift also has some implementations like
```Swift
let addFive = { $0 + 5 }
addFive(7) // Output: 12
```
