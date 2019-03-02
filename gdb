GDB:
----

	To pass command line args to gdb:
	
		 use gdb with --args parameter.

		ex : gdb --args executable_name arg1 arg2 arg3

	If we want to pass parameters inside gdb 
	
		(gdb) r arg1 arg2 arg3

Watch points:
------------
	Watch points are similar to break points, but they are set on the variable not on the functions/lines of the code.

	when the watch variable is written or read, the watchpoint gets triggerred and the program execution stops.

	To set watch point on a non global variable, we must set a break point that will stop the program in the 
	scope of the variable to be watched.

	The watch point can be set after the program stop at the above break point.

	To get notified on a write of a set variable we need gdb command watch.

	When the watch point is trigerred, it prints the old and new value.

CORE-DUMP:	
----------
	It is a file that records the memory image of a running process and its status (register values).

	A program that crashes automatically produces a core dump file.

	It is also known as core file.

	Its primary use is postmortem of a program thar crashed while a ran outside a debuugger.

	Gdb can read the core dump and give the line number of the crash, the arguments that we are passed and more.
	
	To findoutthe size of core file 
	
			run : ulimit -a
	
		If the core file size is zero 
	
			set core file size using 
		     		
				 ulimit -c unlimited
	
			pass gdb the core file

	Ex : gdb executable_name core

	Multithread debugging:
	----------------------

		info threads : 
				list all the existing threads in program.
		thread threadnum // switch to thread num context
		break linenum thread threadnum :
					put a break point at particular thread given line number.
		set print thread-events : 
				this will printout thread start and exit events.
		

