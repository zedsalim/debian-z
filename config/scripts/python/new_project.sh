#!/bin/bash

cd /home/zed/Documents/python_projects

ls

echo "Enter the file's name: "

read name

mkdir $name

cd $name

touch main.py

code main.py
