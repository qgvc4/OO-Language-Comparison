[README.md](../README.md)

# Interface Comparison
* What does the language support?
* What abilities does it have?
* How is it used?

## C#
Interfaces define properties, methods, and events, which are the members of the interface. Interfaces contain only the declaration of the members. It is the responsibility of the deriving class to define the members. It often helps in providing a standard structure that the deriving classes would follow.

Abstract classes to some extent serve the same purpose, however, they are mostly used when only few methods are to be declared by the base class and the deriving class implements the functionalities.

### Declaring Interfaces
Interfaces are declared using the interface keyword. It is similar to class declaration. Interface statements are public by default. Following is an example of an interface declaration −
```cs
public interface ITransactions {
   // interface members
   void showTransaction();
   double getAmount();
}
```

### Example
The following example demonstrates implementation of the above interface −
```cs
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;

namespace InterfaceApplication {
   
   public interface ITransactions {
      // interface members
      void showTransaction();
      double getAmount();
   }
   public class Transaction : ITransactions {
      private string tCode;
      private string date;
      private double amount;
      
      public Transaction() {
         tCode = " ";
         date = " ";
         amount = 0.0;
      }
      public Transaction(string c, string d, double a) {
         tCode = c;
         date = d;
         amount = a;
      }
      public double getAmount() {
         return amount;
      }
      public void showTransaction() {
         Console.WriteLine("Transaction: {0}", tCode);
         Console.WriteLine("Date: {0}", date);
         Console.WriteLine("Amount: {0}", getAmount());
      }
   }
   class Tester {
     
      static void Main(string[] args) {
         Transaction t1 = new Transaction("001", "8/10/2012", 78900.00);
         Transaction t2 = new Transaction("002", "9/10/2012", 451900.00);
         
         t1.showTransaction();
         t2.showTransaction();
         Console.ReadKey();
      }
   }
}
```

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_interfaces.htm)

## Swift
#### Swift support Protocols
In Swift, the equivalent of c# interface is called protocal. A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.

#### Protocol Syntax
``` Swift
protocol SomeProtocol {
    // protocol definition goes here
}
```
multiple protocols can be listed together
```Swift
struct SomeStructure: FirstProtocol, AnotherProtocol {
    // structure definition goes here
}
```
Superclass is listed before protocals
```Swift
class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
    // class definition goes here
}
```
