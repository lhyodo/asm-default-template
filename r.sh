#!/bin/bash

#Program: default-template
#Author: Leo Hyodo

echo "Assemble manager.asm"
nasm -f elf64 -l manager.lis -o manager.o manager.asm

echo "Compile main.c using the gcc compiler standard 2011"
gcc -c -Wall -m64 -no-pie -o main.o main.c -std=c11

echo "Link object files using the gcc linker standard 2011"
gcc -m64 -no-pie -o final-program.out manager.o main.o -std=c11

echo "Run the program:"
./final-program.out

#Clear compiled outputs
rm *.lis
rm *.o
rm *.out

echo "Script file terminated."