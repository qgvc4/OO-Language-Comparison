[README.md](../README.md)


# Implementation of listeners and event handlers


## C#
### Using Delegates with Events
The events are declared and raised in a class and associated with the event handlers using delegates within the same class or some other class. The class containing the event is used to publish the event. This is called the publisher class. Some other class that accepts this event is called the subscriber class. Events use the publisher-subscriber model. A publisher is an object that contains the definition of the event and the delegate. The event-delegate association is also defined in this object. A publisher class object invokes the event and it is notified to other objects. A subscriber is an object that accepts the event and provides an event handler. The delegate in the publisher class invokes the method (event handler) of the subscriber class.
### Declaring Events
To declare an event inside a class, first a delegate type for the event must be declared. For example,
```cs
public delegate string MyDel(string str);
```
Next, the event itself is declared, using the event keyword −
```cs
event MyDel MyEvent;
```
The preceding code defines a delegate named BoilerLogHandler and an event named BoilerEventLog, which invokes the delegate when it is raised.
###Example
```cs
using System;

namespace SampleApp {
   public delegate string MyDel(string str);
	
   class EventProgram {
      event MyDel MyEvent;
		
      public EventProgram() {
         this.MyEvent += new MyDel(this.WelcomeUser);
      }
      public string WelcomeUser(string username) {
         return "Welcome " + username;
      }
      static void Main(string[] args) {
         EventProgram obj1 = new EventProgram();
         string result = obj1.MyEvent("Tutorials Point");
         Console.WriteLine(result);
      }
   }
}
```
Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_events.htm)

## Swift
Event listener monitors whether a specific action is performed, and it defines what to be done if that happens. In Swift, a trigger is created for the object to be monitored, and it is assigned a tag for a specific event. Then the action to be performed is defined to be connected to that trigger. In this way, it can run the action function once the event is triggered.

Example:
```Swift
# define a trigger       
 self.events.trigger("meow", information: "The cat is hungry!");
# connect an action with the trigger
cat.events.listenTo("meow", action: self.dayDream);
# run the function once triggered.
func dayDream() {
        ...
}
```
