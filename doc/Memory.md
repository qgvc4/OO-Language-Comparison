[README.md](../README.md)

# Memory management
* How is it handled?
* How does it work?
* Garbage collection?
* Automatic reference counting?

## C#
In C#, majority of the objects that the app creates, you can rely on .NET's garbage collector to handle memory management. However, when you create objects that include unmanaged resources, you must explicitly release those resources when you finish using them in your app.

If the object is not beed used in a certain time, or the garbage collector reconized it as not longer in use, it will be consider for destruction.


### Garbage Collector
.NET's garbage collector manages the allocation and release of memory for your application. Each time you create a new object, the common language runtime allocates memory for the object from the managed heap. As long as address space is available in the managed heap, the runtime continues to allocate space for new objects



## Swift
In Swift, we use Automatic Reference Counting (ARC) to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you do not need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.

### Automatic Reference Counting
Everytime we create a instance of a class, ARC will allocate some memory for storing its information like
type of the instance, values of stored properties and etc.

When an instance are no longer needed, the ARC will deallocate it to free up some memory for future use. It ensures that
useless instance will not take up space.

When an instance has been deallocated, you will no longer able to access all its information. If you do so, you will get a runtime error and your app will crash simply.

### How ARC works
The way ARC works is by counting how many strong references are being referred to the instance. If there is no more strong
reference, ARC will deallocate that instance.

When we assign an instance to a property, constant or variable, those things will hold a strong reference to that instance.

### Example
```Swift
class Car {
    let maker: String
    init(maker: String) {
        self.maker = maker
        print("\(maker) is being initialized")
    }
    deinit {
        print("\(maker) is being deinitialized")
    }
}


var car1:Car?
var car2:Car?


car1 = Car(maker: "Toyota")
car2 = car1
car1 = nil
car2 = nil
```

At first, we create an instance of Car and assign it to variable car1. This will hold one strong reference of that instance.
The reference count will be 1. Then We assign it to another variable car2, this will make the count equals to 2.
After we assign two nil to both variables, the reference count will be 0 and ARC will sweep out the instance.

### Weak and unowned reference.
Sometimes we will have strong reference cycle which means two class instances hold a strong reference of each other.
This is usually caused by composition relationship.

Let'say we have a class Car and a class Driver. An instance of Car may have a driver instance and a driver instance
may have a car instance. This causes a strong reference cycle.

```Swift
class Car{
    ...
var Driver: d1?
    ...
}

class Driver{
    ...
var Car: c1?
    ...
    }
```

Say we have 2 reference variables car1 and driver1.

```Swift
var car1 : Car? = Car()
var driver1: Driver = Driver()
car1.d1=driver1
driver1.c1=car1
```

After we do

```Swift
car1=nil
driver1=nil
```
Neither the instances will be deallocated. The have strong reference cycle of each other.

#### Solution for strong reference cycle
When we are aware of strong reference cycle, we can fix them by using weak or unowned reference.

Weak and unowned references enable one instance in a reference cycle to refer to the other instance without keeping a strong hold on it. The instances can then refer to each other without creating a strong reference cycle.

A weak reference is a reference that does not keep a strong hold on the instance it refers to, and so does not stop ARC from disposing of the referenced instance. This behavior prevents the reference from becoming part of a strong reference cycle. You indicate a weak reference by placing the weak keyword before a property or variable declaration.

Like a weak reference, an unowned reference does not keep a strong hold on the instance it refers to. Unlike a weak reference, however, an unowned reference is used when the other instance has the same lifetime or a longer lifetime. You indicate an unowned reference by placing the unowned keyword before a property or variable declaration.
