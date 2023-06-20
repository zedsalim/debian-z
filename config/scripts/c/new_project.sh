#!/bin/bash

cd /home/zed/Documents/c_projects

ls

echo "Enter the file's name: "

read name

mkdir $name

cd $name

touch main.c

echo "#include <stdio.h>

int main()
{
	
	return 0;
}" > main.c

vim main.c
