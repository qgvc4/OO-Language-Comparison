[README.md](../README.md)


# Implementation of listeners and event handlers


## C#


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
