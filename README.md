# MiniLibC

A custom implementation of standard C library functions in x86-64 Assembly language. This project creates a dynamic ELF library that can replace (to a certain extent) the standard C library functions through weak binding.

## Description

MiniLibC is an Assembly project that implements various standard C library functions. The goal is to create a dynamic library that can replace some of the basic C library functions using weak binding.

## Implemented Functions

The following functions have been implemented in x86-64 Assembly:

- `strlen` - Calculate the length of a string
- `strchr` - Locate character in string
- `strrchr` - Locate character in string (from the end)
- `memset` - Fill memory with a constant byte
- `memcpy` - Copy memory area
- `strcmp` - Compare two strings
- `memmove` - Copy memory area with overlap handling
- `strncmp` - Compare two strings with length limit
- `strcasecmp` - Case-insensitive string comparison
- `strstr` - Locate substring
- `strpbrk` - Search string for any of a set of bytes
- `strcspn` - Get length of a prefix substring

## Requirements

- Linux environment
- NASM assembler
- GCC compiler
- Make

## Building

The project uses a Makefile with the following rules:

# Build the library
make

# Rebuild the project
make re

# Clean object files
make clean

# Clean object files and binary
make fclean

## Technical Details

- Language: x86-64 Assembly
- Output: Dynamic ELF library (libasm.so)
- Architecture: x86-64

## Author

Seth DJENONTIN
