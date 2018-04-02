[README.md](../README.md)

# Classes
* Defining
* Creating new instances
* Constructing/initializing
* Destructing/de-initializing


## C#
```cs
using System;

namespace ProgrammingGuide
{
   // Class definition.
   public class CustomClass
   {
      // Class members.
      //
      // Property.
      public int Number { get; set; }

      // Method.
      public int Multiply(int num)
      {
          return num * Number;
      }

      // Instance Constructor.
      public CustomClass()
      {
          Number = 0;
      }
   }

   // Another class definition that contains Main, the program entry point.
   class Program
   {
      static void Main(string[] args)
      {
         // Create an object of type CustomClass.
         CustomClass custClass = new CustomClass();

         // Set the value of the public property.
         custClass.Number = 27;

         // Call the public method.
         int result = custClass.Multiply(4);
         Console.WriteLine($"The result is {result}.");
      }
   }
}
// The example displays the following output:
//      The result is 108.
```

* A class constructor is a special member function of a class that is executed whenever we create new objects of that class. A constructor has exactly the same name as that of class and it does not have any return type. A default constructor does not have any parameter but if you need, a constructor can have parameters. Such constructors are called parameterized constructors. This technique helps you to assign initial value to an object at the time of its creation.

* A destructor is a special member function of a class that is executed whenever an object of its class goes out of scope. A destructor has exactly the same name as that of the class with a prefixed tilde (~) and it can neither return a value nor can it take any parameters. Destructor can be very useful for releasing memory resources before exiting the program. Destructors cannot be inherited or overloaded.

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_classes.htm)

## Swift

[embedmd]:# (../code/Swift/classDemo.playground/Contents.swift Swift)
```Swift
//: Playground - noun: a place where people can play

import UIKit

class Student {
    var name: String
    var id: Int
    // initializing
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
    deinit {
        // perform the deinitialization
    }
}

var student = Student(name: "John", id: 1)
```
* Initialization is creating a instance of a class, struct, or enum.
* Deinitialization is automatically and immediately called before a class instance is deallocated. Programmers are not allowed to call it themselves.