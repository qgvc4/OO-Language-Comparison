[README.md](../README.md)

# Properties
* Getters and settere... write your own or built in?
* Backing variables?
* Computed properties?

## C#
### Accessors
The **accessor** of a property contains the executable statements that helps in getting (reading or computing) or setting (writing) the property. The accessor declarations can contain a get accessor, a set accessor, or both. For example −
```cs
// Declare a Code property of type string:
public string Code {
   get {
      return code;
   }
   set {
      code = value;
   }
}

// Declare a Name property of type string:
public string Name {
   get {
      return name;
   }
   set {
      name = value;
   }
}

// Declare a Age property of type int:
public int Age { 
   get {
      return age;
   }
   set {
      age = value;
   }
}
```
### Abstract Properties
An abstract class may have an abstract property, which should be implemented in the derived class. The following program illustrates this −
```cs
using System;

namespace tutorialspoint {
   public abstract class Person {
      public abstract string Name {
         get;
         set;
      }
      public abstract int Age {
         get;
         set;
      }
   }
   class Student : Person {
      private string code = "N.A";
      private string name = "N.A";
      private int age = 0;
      
      // Declare a Code property of type string:
      public string Code {
         get {
            return code;
         }
         set {
            code = value;
         }
      }
      
      // Declare a Name property of type string:
      public override string Name {
         get {
            return name;
         }
         set {
            name = value;
         }
      }
      
      // Declare a Age property of type int:
      public override int Age {
         get {
            return age;
         }
         set {
            age = value;
         }
      }
      public override string ToString() {
         return "Code = " + Code +", Name = " + Name + ", Age = " + Age;
      }
   }
   
   class ExampleDemo {
      public static void Main() {
         // Create a new Student object:
         Student s = new Student();
         
         // Setting code, name and the age of the student
         s.Code = "001";
         s.Name = "Zara";
         s.Age = 9;
         Console.WriteLine("Student Info:- {0}", s);
         
         //let us increase age
         s.Age += 1;
         Console.WriteLine("Student Info:- {0}", s);
         Console.ReadKey();
      }
   }
}
```

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_properties.htm)

## Swift
* Stored Properties
    * store a constant or variable
    * classes and structures
* Computed Properties
    * calculate a value
    * provided by classes, structures, and enumerations

[embedmd]:# (../code/Swift/propertiesDemo.playground/Contents.swift Swift)
```Swift
import UIKit

class Square {
    var length: Double
    var area: Double {
        return length * length
    }
    init(length: Double) {
        self.length = length
    }
}

var squareA = Square(length: 4.0)
print(squareA.length) // 4.0 this is a storeed property
print(squareA.area) // 16.0 this is a computed property
```
