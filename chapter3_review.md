# Chapter 3 Review Questions

Name: Ritu Raj

Course: 5143 Operating Systems

Date: 02 Mar 2016


### 1. What does it mean to preempt a process?

Any exception that makes processor to transfer control from one program to another and resume that program after it completes its process.


### 2. What is swapping and what is its purpose?

Swapping is exchanging pages between the external memory and the RAM.

The purpose of swapping is to access pages (data) stored in hard disk and to bring it into the main memory so that it can be used for some application program.

### 3. List three general categories of information in a process control block.

- Process identification data
- Processor state data
- Process control data

### 4. Why are two modes (user and kernel) needed?

Kernel mode requires direct access to hardware and reference memory whereas; protection is required in user mode.

### 5. What is the difference between an interrupt and a trap?

Interrupt : External to the execution of the current instruction.

Trap : Associated with the execution of the current instruction.

### 6. Give three examples of an interrupt.

* KeyBoard or Mouse Interrupt

* Divide by zero

* Memory Fault


### 7. What is the difference between a mode switch and a process switch?

When the processor switches from one thread or a process to another is referred as process switch.

When the cpu changes privilege levels, its referred as mode switch

