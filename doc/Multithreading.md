[README.md](../README.md)


# Multithreading
* Threads or thread-like abilities?
* How is multitasking accomplished?


## C#
In C#, the **System.Threading.Thread** class is used for working with threads. It allows creating and accessing individual threads in a multithreaded application. The first thread to be executed in a process is called the **main** thread. When a C# program starts execution, the main thread is automatically created. The threads created using the **Thread** class are called the child threads of the main thread. You can access a thread using the **CurrentThread** property of the Thread class.

The following program demonstrates main thread execution −
```cs
using System;
using System.Threading;

namespace MultithreadingApplication {
   class MainThreadProgram {
      static void Main(string[] args) {
         Thread th = Thread.CurrentThread;
         th.Name = "MainThread";
         
         Console.WriteLine("This is {0}", th.Name);
         Console.ReadKey();
      }
   }
}
```

### Creating Threads
Threads are created by extending the Thread class. The extended Thread class then calls the **Start()** method to begin the child thread execution.

The following program demonstrates the concept −
```cs
using System;
using System.Threading;

namespace MultithreadingApplication {
   class ThreadCreationProgram {
      public static void CallToChildThread() {
         Console.WriteLine("Child thread starts");
      }
      static void Main(string[] args) {
         ThreadStart childref = new ThreadStart(CallToChildThread);
         Console.WriteLine("In Main: Creating the Child thread");
         Thread childThread = new Thread(childref);
         childThread.Start();
         Console.ReadKey();
      }
   }
}
```
### Managing Threads
The Thread class provides various methods for managing threads.

The following example demonstrates the use of the **sleep()** method for making a thread pause for a specific period of time.

```cs
using System;
using System.Threading;

namespace MultithreadingApplication {
   class ThreadCreationProgram {
      public static void CallToChildThread() {
         Console.WriteLine("Child thread starts");
         
         // the thread is paused for 5000 milliseconds
         int sleepfor = 5000; 
         
         Console.WriteLine("Child Thread Paused for {0} seconds", sleepfor / 1000);
         Thread.Sleep(sleepfor);
         Console.WriteLine("Child thread resumes");
      }
      
      static void Main(string[] args) {
         ThreadStart childref = new ThreadStart(CallToChildThread);
         Console.WriteLine("In Main: Creating the Child thread");
         
         Thread childThread = new Thread(childref);
         childThread.Start();
         Console.ReadKey();
      }
   }
}
```

### Destroying Threads
The **Abort()** method is used for destroying threads.

The runtime aborts the thread by throwing a **ThreadAbortException**. This exception cannot be caught, the control is sent to the finally block, if any.

The following program illustrates this −
```cs
using System;
using System.Threading;

namespace MultithreadingApplication {
   class ThreadCreationProgram {
      public static void CallToChildThread() {
         try {
            Console.WriteLine("Child thread starts");
            
            // do some work, like counting to 10
            for (int counter = 0; counter <= 10; counter++) {
               Thread.Sleep(500);
               Console.WriteLine(counter);
            }
            
            Console.WriteLine("Child Thread Completed");
         } catch (ThreadAbortException e) {
            Console.WriteLine("Thread Abort Exception");
         } finally {
            Console.WriteLine("Couldn't catch the Thread Exception");
         }
      }
      static void Main(string[] args) {
         ThreadStart childref = new ThreadStart(CallToChildThread);
         Console.WriteLine("In Main: Creating the Child thread");
         
         Thread childThread = new Thread(childref);
         childThread.Start();
         
         //stop the main thread for some time
         Thread.Sleep(2000);
         
         //now abort the child
         Console.WriteLine("In Main: Aborting the Child thread");
         
         childThread.Abort();
         Console.ReadKey();
      }
   }
}
```

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_multithreading.htm)

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