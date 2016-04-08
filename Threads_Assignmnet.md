## Review Questions

- Name: Ritu Raj

- MID: M20222819

- Course: 5143 Operating Systems

- Date: 08 April 2016

## 1.Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation.

Threads1 has two threads namely threadA and threadB, each with its own local variable(k), ThreadA and ThreadB completes its execution before main method does. 

            threadA.join()
            threadB.join()

            print 'Goodbye from the main program'

Where as in Threads2 we have a global variable(sharedCounter) and this variable is shared among two threads that makes sharedCounter inconsistent.

            global sharedCounter

            print 'A:', k, sharedCounter

## 2.After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

Yes, It has fixed the problems that occured in Threads2.py, by adding a lock to the shared variable when ever a thread access it.So that no other thread can read or write into that maintaine consistency of global variable.

            global sharedCounter
            for k in xrange(10000000):
            //self.lock.acquire()
            if k % 100000 == 0:
            print 'A:', k, sharedCounter
            sharedCounter += 1
            //self.lock.release()

## 3.Comment out the join statements at the bottom of the program and describe what happens.

ThreadA and ThreadB starts execution while main thread completes before other thread does.

## 4.What happens if you try to Ctrl-C out of the program before it terminates?

Even if we try to terminate the process it won't, KeyboardInterrupt Exception is ignored untill all threads completes its execution.

            Exception KeyboardInterrupt in <module 'threading' from '/usr/lib/python2.7/  threading.pyc'> ignored

## 5.Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.

Threads4.py has a global variable called sharedNumber and it is shared between threadA and threadB. When we execute this code we don't know which thread is going to start first and access(read from/write into) the shared variable. And later when the other thread try to access the variable its value may be different from past assigned. Because we don't have a lock on shared variable.Thus everytime when 'if(condition)' checks an expression it always gets true and prints "that was weird".

            sharedNumber = 1
            if sharedNumber != 1:
                print 'A: that was weird'

## 6.Does uncommenting the lock operations clear up the problem in question 5?



