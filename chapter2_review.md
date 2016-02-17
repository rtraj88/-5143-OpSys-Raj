# Chapter 2 Review Questions

Name: Ritu raj

Course: 5143 Operating Systems

Date: 17 Feb 2016 (e.g. 08 Feb 2016)

## 1. What are three objectives of an OS design?

- Convenience
- Efficiency
- Ability to evolve

## 2. What is the kernel of an OS?

The kernel is a program that constitutes the central core of a computer operating system. It has complete control over everything that occurs in the system

## 3. What is multiprogramming?

The running of two or more programs or sequences of instructions simultaneously by a computer with more than one central processor.

## 4. What is a process?

A process is defined as an entity which represents the basic unit of work to be implemented in the system

## 5. How is the execution context of a process used by the OS?

The context includes all of the information that the OS needs to manage the process and that the processor needs 
to execute the process properly including:contents of the various processor registers, such as the program counter 
and data registers And information of use to the OS, such as the priority of the process and whether the process 
is waiting for the completion of a particular I/O event.

## 6. List and briefly explain five storage management responsibilities of a typical OS.

- Process isolation

The OS must prevent independent processes from interfering
with each other’s memory, both data and instructions.

- Automatic allocation and management

Programs should be dynamically
allocated across the memory hierarchy as required. Allocation should be
transparent to the programmer. Thus, the programmer is relieved of concerns
relating to memory limitations, and the OS can achieve efficiency by assigning
memory to jobs only as needed.

- Support of modular programming

Programmers should be able to define program
modules, and to create, destroy, and alter the size of modules dynamically.

- Protection and access control

Sharing of memory, at any level of the memory
hierarchy, creates the potential for one program to address the memory space
of another. This is desirable when sharing is needed by particular applications.
At other times, it threatens the integrity of programs and even of the OS itself.
The OS must allow portions of memory to be accessible in various ways by
various users.

- Long-term storage

Many application programs require means for storing
information for extended periods of time, after the computer has been
powered down.

## 7. Explain the distinction between a real address and a virtual address.

Real Address : A physical address (also real address, or binary address), is a memory address that is represented in the form of a binary number on the address bus circuitry in order to enable the data bus to access a particular storage cell of main memory, or a register of memory mapped I/O device

Virtual Address : A virtual address is a binary number in virtual memory that enables a process to use a location in primary storage (main memory) independently of other processes and to use more space than actually exists in primary storage by temporarily relegating some contents to a hard disk or internal flash drive.

## 8. Describe the round-robin scheduling technique.

Round robin scheduling is a preemptive version of first-come, first-served scheduling. Processes are dispatched in a first-in-first-out sequence but each process is allowed to run for only a limited amount of time. This time interval is known as a time-slice or quantum. If a process does not complete or get blocked because of an I/O operation within the time slice, the time slice expires and the process is preempted. This preempted process is placed at the back of the run queue where it must wait for all the processes that were already in the queue to cycle through the CPU.

## 9. Explain the difference between a monolithic kernel and a microkernel.

Monolithic Kernel | Micro kernel
------------------|--------------------
Monolithic kernel is a single large process running entirely in a single address space. It is a single static binary file | In microkernels, the kernel is broken down into separate processes, known as servers
All kernel services exist and execute in the kernel address space | Some of the servers run in kernel space and some run in user-space. All servers are kept separate and run in different address spaces
The kernel can invoke functions directly | Servers invoke "services" from each other by sending messages via IPC
Examples of monolithic kernel based OSs: Unix, Linux | Examples of microkernel based OSs: Mac OS X and Windows NT


## 10. What is multithreading?

Technique in which a process executing an application is divided into threads that can run concurrently.

## 11. List the key design issues for an SMP operating system.

- Threads
- Sheduling
- Synchronization
- Memory management
- Reliability and fault tolerance
