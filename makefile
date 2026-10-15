#Raymond Chen

# Makefile for project 1-4.

#change the last dependency for each new project
all:  tags headers project1

#this entry has to change for project 2 - 4
# NEVER compile .c files with this rule - it lacks needed compile time flags
# There is an entry below that turns .c files into .o files

project1: project1.o 
	gcc -g -o $@ $^ 

#this is where you create an entry to build your zip file
#it will also update with new projects

project1.zip: makefile *.c *.h readme
	zip project1.zip makefile *.c *.h readme

numbers: makefile
	ls -lt >> numbers
	date >> numbers
	ls -lt >> numbers


#this entry stays for C code projects
tags: *.c
	ctags -R .

# this entry stays for C code projectssss
#
headers: *.c tags
	./headers.sh


# this entry takes care of C files depending on header files
# It has the flags for compiling the c code
# It you don't like makefiles, consider typing the following line a few
# thousand times this semester and reconsider.
# Be sure that this one doesn't get an inserted line break anywhere
%.o:%.c *.h
	gcc -std=c99 -pedantic -Wimplicit-function-declaration -Wreturn-type -g -c $< -o $@


