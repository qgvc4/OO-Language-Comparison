[README.md](../README.md)

# Funtional programming
* Does the language support functional programming?


## C#


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
