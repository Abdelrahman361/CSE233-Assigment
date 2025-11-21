C Fundamentals Demo

This repository contains several small C programs and a Makefile demonstrating core concepts in compilation, linking, and fundamental Operating System (OS) operations, such as process creation.

Table of Contents

Prerequisites

Building the Project

Project Modules and Targets

linker_output (Multi-File Linking)

louder (Simple Compilation and Dynamic Linking)

process (OS Process Management)

Cleanup

Prerequisites

To compile and run the programs in this repository, you need:

GCC (GNU Compiler Collection): The C compiler.

make: The build automation tool.

Standard C Libraries: Typically included with GCC setup.

You can usually install these packages on Linux distributions using:

# For Debian/Ubuntu
sudo apt update
sudo apt install build-essential

# For macOS (with Homebrew)
xcode-select --install
brew install make


Building the Project

All programs are built using the provided Makefile. You can compile everything at once or target specific components.

Build All Components

To compile all targets defined in the Makefile:

make


Build Specific Components

To compile only a specific target (e.g., the linker_output program):

make linker_output


Project Modules and Targets

linker_output (Multi-File Linking)

This module demonstrates the concept of separate compilation and linking. Two C source files (file1.c and file2.c) are compiled into object files (.o), and then those object files are linked together to create the final executable.

Source Files: file1.c (defines hello()), file2.c (declares and calls hello()).

Build Target: linker_output

Execution Command:

make linker_output
./linker_output


louder (Simple Compilation and Dynamic Linking)

This is a straightforward program compiled from a single source file (louder.c). It also includes a target (ldd) to inspect its dynamic library dependencies.

Source File: louder.c (Simple "Hello World" style output).

Build Target: louder

Execution Commands:

Compile and run:

make louder
./louder


Check dynamic dependencies (Libraries the program needs at runtime, like libc):

make ldd


process (OS Process Management)

This module demonstrates the use of the fork() system call, which is fundamental to creating new processes in Unix-like operating systems. When executed, the program splits into two processes—a parent and a child—each executing concurrently.

Source File: process.c

Build Target: process

Execution Command:

make process
# Note: The Makefile executes the program immediately after compilation for this target.
# To run it manually:
# ./process


Cleanup

To remove all generated object files (*.o) and executable binaries (linker_output, louder, process), use the clean target:

make clean
