# Chapter 2 Review Questions

Name : Maradala Prathima

Course : 5143 Operating System

Date : 17 feb 2016


## Question 1
 
 There are some standard objectives for the design of an operating system.
 
  **_Convenience_**
  
  The main purpose of an operating system is to provide a convenient interface for users of a computer. The operating system makes use of a computer's hardware and provides services to computer users. 
 
 
  **_Efficiency_**
  
  A computer's operating system acts to provide interfaces for computer users to the computer hardware. It should be able to manage the hardware so that the hardware does its work in an efficient manner and uses resources in the best way.
 
 
  **_Ability to evolve_**
  
Another objective for the design of an operating system is that it should be easy to maintain and upgrade.And it should also be possible to expand the system to include more services to meet user needs. Also, the operating system should be able accommodate any fixes relating to bugs in any computer program.
 
## Question 2
 
 **_Kernel_**
 
 The _kernel_ is the central module of an operating system (OS). It is the part of the operating system that loads first, and it remains in main memory. Because it stays in memory, it is important for the kernel to be as small as possible while still providing all the essential services required by other parts of the operating system and
applications. The the kernel code is usually loaded into a protected area of memory to prevent it from being overwritten by programs or other parts of the operating system.

Typically, the kernel is responsible for memory management, process and task management, and disk management. The kernel connects the system hardware to the application software. Every operating system 
has a kernel. For example the Linux kernel is used numerous operating systems including Linux, FreeBSD, 
Android and others.

## Question 3

Multiprogramming is a rudimentary form of parallel processing in which several programs are run at the same time on a uniprocessor.
In a multiprogramming system there are one or more programs loaded in main memory which are ready to execute. Only one program at a time is able to get the CPU for executing its instructions (i.e., there is at most 
one process running on the system) while all the others are waiting their turn.The main idea of multiprogramming is to maximize the use of CPU time. Indeed, suppose the currently running 
process is performing an I/O task (which, by definition, does not need the CPU to be accomplished). Then, the OS may interrupt that process and give the control to one of the other in-main-memory programs that are 
ready to execute (i.e. process context switching). In this way, no CPU time is wasted by the system waiting for the I/O task to be completed, and a running process keeps executing until either it voluntarily releases the 
CPU or when it blocks for an I/O operation. Therefore, the ultimate goal of multiprogramming is to keep the CPU busy as long as there are processes ready to execute.

## Question 4

**_Process_**
A process is defined as an entity which represents the basic unit of work to be implemented in the system.
In computing, a process is an instance of a computer program that is being executed. It contains the program 
code and its current activity. Depending on the operating system (OS), a process may be made up of multiple 
threads of execution that execute instructions concurrently.
A process can initiate a subprocess, which is a called a child process (and the initiating process is sometimes 
referred to as its parent ). A child process is a replica of the parent process and shares some of its resources, 
but cannot exist if the parent is terminated.

## Question 5
The execution context, or process state, is the internal data by which the operating system is able to supervise 
and control the process. This internal information is separated from the process, because the operating system 
has information not permitted to the process. The context includes all of the information that the operating 
system needs to manage the process and that the processor needs to execute the process properly. The 
context includes the contents of the various processor registers, such as the program counter and data 
registers. It also includes information of use to the operating system, such as the priority of the process and 
whether the process is waiting for the completion of a particular I/O event.

## Question 6

**_Process isolation_**
This is the prevention of data and instruction from interfering with each other process isolation helps this happen.

**_Automatic allocation and management_**
This is the process whereby allocation should be transported to the programmer.

**_Support of modular programming_**
Supports the program to be able to define programs modules and to create, destroy and alter the size of Modules dynamically.

**_Protection and access control_**
This is the process of sharing memory this is desirable when sharing is needed by a particular application it 
also threatens the integrity of programs.

**_Long term storage_**
Is a process whereby memory is stored for a long period of time even when the computer is switch off it is 
stored in the RAM.

## Question 7

**_Real Address_**
In computing, a physical address (also real address, or binary address), is a memory address that is 
represented in the form of a binary number on the address bus circuitry in order to enable the data bus to 
access a particular storage cell of main memory, or a register of memory mapped I/O device.
 
**_Virtual Address_**

A _virtual_ address is a binary number in virtual memory that enables a process to use a location in primary 
storage (main memory) independently of other processes and to use more space than actually exists in 
primary storage by temporarily relegating some contents to a hard disk or internal flash drive.
Virtual memory was conceived to meet the requirement of having multiple
user jobs reside in main memory concurrently, so that there would not be a hiatus
between the execution of successive processes while one process was written out
to secondary store and the successor process was read in.

## Question 8

**_Round-robin (RR)_** is one of the algorithms employed by process and network schedulers in computing.One of 
the oldest, simplest, fairest and most widely used algorithm is round robin (RR).In the round robin scheduling, 
processes are dispatched in a FIFO manner but are given a limited amount of CPU time called a time-slice or a 
quantum.If a process does not complete before its CPU-time expires, the CPU is preempted and given to the 
next process waiting in a queue. The preempted process is then placed at the back of the ready list.

_Round Robin_ Scheduling is preemptive (at the end of time-slice) therefore it is effective in time-sharing 
environments in which the system needs to guarantee reasonable response times for interactive users.
The only interesting issue with round robin scheme is the length of the quantum. Setting the quantum too 
short causes too many context switches and lower the CPU efficiency. On the other hand, setting the quantum 
too long may cause poor response time and appoximates FCFS.In any event, the average waiting time under 
round robin scheduling is often quite long.

## Question 9

The kernel internally contains many components, such as a memory manager, scheduler, numerous device 
drivers, a file system, and so on. When an operating system is being written, there are numerous design 
philosophies which the designers can adopt.In practice, the design of most operating systems lies somewhere in between those two extremes.

**_Monolithic Kernel_**

In monolithic operating system all services are provided in the operating system kernel itself. In my own 
understanding, monolithic operating system is one big program. Being 'one big program' all the services are 
associated with one another. This is prone to system crashes, because, if one particular function fails, the 
entire system will be brought to halt. In regards to resource management, it is difficult for the programmer to 
debug or implement the system. The only advantages of being monolithic are it deals with resource 
management rapidly. An example of a monolithic operating system will be the UNIX and MS-DOS. 

**_MicroKernel_**

In microkernel operating system, processes are divided and stored in a different server. This key concept of 
the microkernel operating system is to keep the OS kernel small with basic and minimum process. Other 
services are stored in a different server. They communicate, via a communication channel.

## Question 10

**_Multithreading_**

_Multithreading_ is the ability of a program or an operating system process to manage its use by more than one 
user at a time and to even manage multiple requests by the same user without having to have multiple copies 
of the programming running in the computer. Each user request for a program or system service (and here a 
user can also be another program) is kept track of as a thread with a separate identity. As programs work on 
behalf of the initial request for that thread and are interrupted by other requests, the status of work on behalf 
of that thread is kept track of until the work is completed.

## Question 11

Symmetric-multiprocessing (SMP) software is expected to be quickly available to support these peripherals. 
While developing software for SMP systems  software developers must consider some common design issues. 


 Handling of task priority or implicit synchronization

 Spinlocks and synchronization

 Synchronization between tasks sharing memory

 Synchronization between tasks and ISRs sharing memory

 Synchronization between ISRs sharing memory
