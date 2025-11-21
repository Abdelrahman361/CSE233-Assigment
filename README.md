# Assignment 2 – Basic forks and C Style Development

This repository contains all examples from Lab-5 for Assignment 2.
The examples include compilation of object files, linking, process creation with fork, and understanding of loader and linker behaviour.

## Files
- `file1.c` – Contains the hello() function.
- `file2.c` – Contains main() calling hello().
- `louder.c` – Prints a simple program message.
- `process.c` – Demonstrates fork() and child/parent processes.
- `Makefile` – Compile and link all examples.
- `answers.txt` – Explanations of all code and concepts.
- `LICENSE` – MIT License file.
- `screenshots/` – Screenshots of compilation and execution.

## Installation / Build
- Compile all programs:
  ```bash
  make
  ```
- Compile specific programs:
  ```bash
  make louder
  make process
  ```

## Usage
- Run each program:
  ```bash
  ./linker_output
  ./louder
  ./process
  ```
- Inspect dynamic libraries for louder:
  ```bash
  ldd louder
  ```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
MIT License
