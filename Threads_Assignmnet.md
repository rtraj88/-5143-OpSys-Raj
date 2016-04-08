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

## 3.Comment out the join statements at the bottom of the program and describe what happens.

## 4.What happens if you try to Ctrl-C out of the program before it terminates?

## 5.Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.

## 6.Does uncommenting the lock operations clear up the problem in question 5?

