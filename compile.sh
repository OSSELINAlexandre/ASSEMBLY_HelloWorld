#! /bin/bash

object_file_name='hello.o'
executable_name='helloWorldAssembly'

echo '=>You need gcc to execute this script.'

echo 'Compiling a simple hello_world program in assembly code.'

as -g -o ${object_file_name} hello_world.s

echo 'First step OK : file is compiled in object file.'

ld  -o ${executable_name} ${object_file_name}

echo 'Second step OK : file is linked into an executable.'

echo 'You can now execute a hello world in assembly code !'
