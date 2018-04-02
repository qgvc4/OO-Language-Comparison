[README.md](../README.md)

# Name Spaces
* How are name spaces implemented?
* How are name spaces used?


## C#
### Defining a Namespace
A namespace definition begins with the keyword **namespace** followed by the namespace name as follows −
```cs
namespace namespace_name {
   // code declarations
}
```
To call the namespace-enabled version of either function or variable, prepend the namespace name as follows −
```cs
namespace_name.item_name;
```
The following program demonstrates use of namespaces −
```cs
using System;

namespace first_space {
   class namespace_cl {
      public void func() {
         Console.WriteLine("Inside first_space");
      }
   }
}
namespace second_space {
   class namespace_cl {
      public void func() {
         Console.WriteLine("Inside second_space");
      }
   }
}
class TestClass {
   static void Main(string[] args) {
      first_space.namespace_cl fc = new first_space.namespace_cl();
      second_space.namespace_cl sc = new second_space.namespace_cl();
      fc.func();
      sc.func();
      Console.ReadKey();
   }
}
```
### Nested Namespaces
You can define one namespace inside another namespace as follows −
```cs
namespace namespace_name1 {
   
   // code declarations
   namespace namespace_name2 {
      // code declarations
   }
}
```
You can access members of nested namespace by using the dot (.) operator as follows −
```cs
using System;
using first_space;
using first_space.second_space;

namespace first_space {
   class abc {
      public void func() {
         Console.WriteLine("Inside first_space");
      }
   }
   namespace second_space {
      class efg {
         public void func() {
            Console.WriteLine("Inside second_space");
         }
      }
   }   
}
class TestClass {
   static void Main(string[] args) {
      abc fc = new abc();
      efg sc = new efg();
      fc.func();
      sc.func();
      Console.ReadKey();
   }
}
```
Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_namespaces.htm)

## Swift
In Swift, we can have the same name for a class if they come from two different namespace (There is no namespcae in Objective-C, which is always being criticized by developers). 

However, it is not the same as C#, in which namespace is declared explicitly and containing additional code with braces. 

“Namespacing is implicit in Swift, all classes (etc) are implicitly scoped by the module (XCode target) they are in. no class prefixes needed” – Chris Lattner, developer of Swift

