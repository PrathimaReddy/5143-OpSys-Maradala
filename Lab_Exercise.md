# Name: Maradala Prathima
# Date: 04/08/2016
# Id : M20228090

### 1.Explain the differences between _Threads1_ and _Threads2_ using lines from the code and a precise explanation.

#####Ans) 
_Thread1.py_ contains the threads named A and B which are pointing to the  shared resources and in this there is no interlink 
between and of these operations each are of single step completion. While considering _Thread2.py_ it contains a resourse called 
_Sharedcounter_ which is declared as globle and incremented for each thread call by run() function.
As it is a global resource and shared by both threads there is a chance of it getting rewritten by the another thread when one is accesing 
it.
oprations for _sharedcounter_
1. Get the value of the counter by the present thread.
2. Increment the value of the counter by the present thread.
3. re write the value back to the counter.


### 2.After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

#####Ans)
_Thread3.py_ includes concept of synchronization.Locks are the most fundamental synchronization mechanism provided by the threading module. 
At any time, a lock can be held by a single thread, or by no thread at all.If a thread attempts to hold a lock that’s already held by some other 
thread, execution of the first thread is halted until the lock is released.For each shared resource, create a Lock object. When you need to access 
the resource, call acquire to hold the lock  and call release to release it.



### 3.Comment out the join statements at the bottom of the program and describe what happens.

#####Ans)
Join() method is used to hold the other threads untill the present thread to be processed and gets completed.In _Thread2.p_ the join()
methond is used to stop the execution of main thread before its child threads being processed .

### 4.What happens if you try to Ctrl-C out of the program before it terminates?

##### Ans)
 Ctrl + c while a python program is running will cause python to raise a KeyboardInterupt exception.If its called freqently its terminates the program
 
### 5.Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening cause this bizarre behavior using lines from the code and precise explanation.

##### Ans)
_Thread4.py_ contains lock which is called on the shared resource but none of threads called acquire() to accesses resource.so any thread can use share resource.
def run(self):
        global sharedNumber
        
        for k in range(10000000):
        
            self.lock.acquire()
            
          
            sharedNumber = 1
            
            if sharedNumber != 1:
            
                print ("A: that was weird")
                
                print ("Goodbye from thread A")

### 6.Does uncommenting the lock operations clear up the problem in question 5?
  
##### Ans)
It can be over come by usin lock.acquire()for a thread therefore it only have access to the share resource once its done then it releases
the share resource by calling release() method.
  
