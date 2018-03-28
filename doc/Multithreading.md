[README.md](../README.md)


# Multithreading
* Threads or thread-like abilities?
* How is multitasking accomplished?


## C#



## Swift
There are several ways to implement multithreading in Swift.
NSThread creates a new low-level thread which can be started by calling the start method.
```Swift
var myThread = Thread(target: self, selector: #selector(self.myThreadMainMethod), object: nil)
myThread.start()
```

Grand Central Dispatch (GCD) is another method used to achieve multithreading. Basically it provides a way to queue the tasks for dispatch.
```Swift
let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0)
dispatch_async(queue) {
}
```

The example above shows the task it assigned to the global queue. GCD provides three main types of queues. 
    The main queue runs on the main thread and is a serial queue. 
    Global queues: concurrent queues that are shared by the whole system. 
    There are four such queues with different priorities : 
* high
* default
* low
* background. 

The background priority queue is I/O throttled. 
Custom queues: queues that you create which can be serial or concurrent. 
These actually trickle down into being handled by one of the global queues. For the global concurrent queues, the priority is not specified. Instead the Quality of Service is specified, and GCD will determine the priority given to the task.