#!/bin/bash

set -e
<<usage
-create directory
-if encounter any error, do not execute further
usage

touch new-file.txt || { ech0 "if file already exist; kuch bhi kr de bhai; bs error mt de";}

