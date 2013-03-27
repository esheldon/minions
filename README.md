minions
=======

A simple C program to use MPI to run a set of jobs.

examples
--------

find . -name *.sh | mpirun -n 25 minions

mpirun -n 25 minions < command-list.txt

As test you can try the scripts from the /example
sub-directory.

    ls example/*.sh | mpirun -n 4 minions

compilation
-----------
Make sure you compile with -std=gnu99.  You can
use the provided Makefile

    make
