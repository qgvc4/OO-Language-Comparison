[README.md](../README.md)

# Null/nil references
* Which does the language use? (null/nil/etc)
* Does the language have features for handling null/nil references?


## C#
C# provides a special data types, the nullable types, to which you can assign normal range of values as well as null values.

For example, you can store any value from -2,147,483,648 to 2,147,483,647 or null in a **Nullable**&lt;Int32&gt; variable. Similarly, you can assign true, false, or null in a **Nullable**&lt;bool&gt; variable. Syntax for declaring a nullable type is as follows −
```cs
< data_type> ? <variable_name> = null;
```
The following example demonstrates use of nullable data types −
```cs
using System;

namespace CalculatorApplication {
   class NullablesAtShow {
      static void Main(string[] args) {
         int? num1 = null;
         int? num2 = 45;
         
         double? num3 = new double?();
         double? num4 = 3.14157;
         
         bool? boolval = new bool?();

         // display the values
         Console.WriteLine("Nullables at Show: {0}, {1}, {2}, {3}", num1, num2, num3, num4);
         Console.WriteLine("A Nullable boolean value: {0}", boolval);
         Console.ReadLine();
      }
   }
}
```

### The Null Coalescing Operator (??)
The null coalescing operator is used with the nullable value types and reference types. It is used for converting an operand to the type of another nullable (or not) value type operand, where an implicit conversion is possible.

If the value of the first operand is null, then the operator returns the value of the second operand, otherwise it returns the value of the first operand. The following example explains this −
```cs
using System;

namespace CalculatorApplication {
   class NullablesAtShow {
      static void Main(string[] args) {
         double? num1 = null;
         double? num2 = 3.14157;
         double num3;
         
         num3 = num1 ?? 5.34;      
         Console.WriteLine(" Value of num3: {0}", num3);
         
         num3 = num2 ?? 5.34;
         Console.WriteLine(" Value of num3: {0}", num3);
         Console.ReadLine();
      }
   }
}
```

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_nullables.htm)


## Swift

In Swift, we have optional variables which are allowed to have nil reference. If a variable is't declared as
an optional variable, it cannot have a nil reference and the compiler will show the error.

There are the same two instances where we may have a nil reference.
1. nil is a valid response
2. nil is not a valid response

## How to handle nil
* Force or automatic unwrapping and use IF ELSE block to handle it.
* Optional Binding: We can use "if let" to handle it. This is like if else in Java, the example code will show how to implement this.
* We can use "guard" to handle nil. This is a very innovative unique way in Swift.
* Null Object Pattern: We can have some default instance of the class to represent nil and let other part to handle it.
* We can also do and catch the exception like Java and handle nil. This won't be show in code example.

### [See a simple Swift example here](../../SwiftCodeForFinalProject/NilExample.swift)