[README.md](../README.md)

# Inheritance / extension


## C#
Base Class
```CS
   class Shape {
      public void setWidth(int w) {
         width = w;
      }
      public void setHeight(int h) {
         height = h;
      }
      protected int width;
      protected int height;
   }
```

Derived class
```CS
   class Rectangle: Shape {
      public int getArea() { 
         return (width * height); 
      }
   }
```

Method override
```CS
class BC{
    public virtual void Display(){                  System.Console.WriteLine("BC::Display");
     }
}

class DC : BC{
  public override void Display(){
         System.Console.WriteLine("DC::Display");
    }
}

```

Property override
```CS
abstract class BC{
  public virtual int x
  {
    get { 
        throw new NotImplementedException(); 
        }
  }
}

abstract class DC : BC{}
  public override int x { get { ... } }
}

```

## Swift
Base Class
```Swift
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}
```
subclass
```Swift
class Bicycle: Vehicle {
    var hasBasket = false
}
```

method override
```Swift
class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
```
property override
```Swift
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
```

Similar to `sealed` in C# and `final` in Java, Swift use `final` to prevent a method, property, or subscript from being overridden.