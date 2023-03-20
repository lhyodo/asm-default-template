//****************************************************************************************************************************
//Program name: "default-template".  This program will
// Copyright (C) 2023 Leo Hyodo.                                                                                             *
//                                                                                                                           *
//This file is part of the software program "default-template".                                                              *
//default-template is free software: you can redistribute it and/or modify it under the terms of the GNU General Public      *
//License version 3 as published by the Free Software Foundation.                                                            *
//default-template is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied     *
//warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.     *
//A copy of the GNU General Public License v3 is available here:  <https:;www.gnu.org/licenses/>.                            *
//****************************************************************************************************************************

//=======1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
//
//Author information
//  Author name: Leo Hyodo
//  Author email: lhyodo@csu.fullerton.edu
//
//Program information
//  Program name: default-template
//  Programming languages: One modules in C and one module in X86
//  Date program began: 2023 March 20
//  Date of last update: 2023 March 20
//  Files in this program: main.c, manager.asm
//  Status: Finished.
//
//Purpose
//  Show how to input and output floating point (64-bit) numbers.
//
//This file
//   File name: main.c
//   Language: C
//   Max page width: 132 columns
//   Compile: gcc -c -Wall -m64 -no-pie -o main.o main.c -std=c11
//   Link: gcc -m64 -no-pie -o final-program.out manager.o main.o -std=c11
//   Optimal print specification: 132 columns width, 7 points, monospace, 8½x11 paper
//
//=======1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3**
//
//
//===== Begin code area ===========================================================================================================

#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <sys/time.h>
#include <stdlib.h>

extern double manager();

int main(int argc, char* argv[])
{
  printf("Welcome to the program\n");
  printf("This software is maintained by Leo Hyodo\n");
  
  double p = manager();
  printf("%lf\n", p);

  printf("We hope you enjoyed your program. Goodbye.\n");
  printf("A zero will be returned to the operating system.\n");
  return 0;
}
