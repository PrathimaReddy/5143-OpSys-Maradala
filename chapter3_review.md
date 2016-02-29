# Chapter 3 Review Questions

Name : Maradala Prathima

Course : 5143 Operating System

Date : 29 feb 2016

## What does it mean to preempt a process?

To take a resource away from a process. One such resource is the  _CPU_, and in fact preempt often
means to move a process from **_RUNNING_** state to **_READY state_**. The process involuntarily gives up the _CPU_. 

## What is swapping and what is its purpose?

**_Swapping_**:

Swapping is a simple memory/process management technique used by the operating system(os) to increase the utilization of the processor by moving 
some blocked process from the main memory to the secondary memory(hard disk);thus forming a queue of temporarily suspended process and the 
execution continues with the newly arrived process.
 

Swapping concept comes in terms of process scheduling. Swapping is basically implemented by Medium term scheduler.Medium term scheduler 
removes process from CPU for duration and reduce the degree of multiprogramming. And after some time these process can again be reintroduced into main memory. Process execution will again be resumed 
from the point it left CPU. This scheme is called swapping. More generally we can say swapping is removing of process from memory to secondary 
memory and again back to main memory.

## List three general categories of information in a process control block.

_Process identification_ :   id of this process, id of the parent process and user id.

_Processor state information_ :    program counter, status registers, and general-purpose registers.

_Process control information_ :

a. Scheduling & state information: process state, priority, scheduling-relatedinformation (amount of time waiting and time being executed), event
(identity of event the process is awaiting before can be resumed).


b. Data structuring: a process may be linked to other process in a queue.


c. Memory management: include pointers to page tables that describe the virtual memory assigned.


d. Resource ownership and utilization.


e. Process privileges: e.g. the memory that may be accessed, types of instructions that may be executed and the use of system utilities and
services.


f. Interprocess communication.

## Why are two modes (user and kernel) needed?

A processor in a computer running Windows has two different modes: **_user mode_** and **_kernel mode_**. The processor switches between the two modes 
depending on what type of code is running on the processor.kernel mode needs direct access to hardware and reference memory, 
protection needed in user mode.

Applications run in user mode, and core operating system components run in kernel mode. While many drivers run in kernel mode, some drivers may 
run in user mode.

## What is the difference between an interrupt and a trap?

_Interrupts_ are hardware interrupts, while _Traps_ are software-invoked interrupts. Occurrences of hardware interrupts usually disable other 
hardware interrupts, but this is not true for traps. If you need to disallow hardware interrupts until a trap is served, you need to explicitly clear the 
interrupt flag. And usually the interrupt flag on the computer affects (hardware) interrupts as opposed to traps. This means that clearing this 
flag will not prevent traps. Unlike traps, interrupts should preserve the previous state of the CPU.

## Give three examples of an interrupt.

When a Process is executed by the CPU and when a user Request for another Process then this will create disturbance for the Running Process. 
This is also called as the **_Interrupt_**.Examples of interrupt.

1)   Internal Interrupt

2)   Software Interrupt.

3)   External Interrupt.

## What is the difference between a mode switch and a process switch?

_Process switch_ is switch the process state between the status like read, blocked ,suspend. _Mode switch_ is the switch the process privilege between the mode like use mode, kernel mode.
Generally a mode switch is considered less expensive compared to a process switch. 
