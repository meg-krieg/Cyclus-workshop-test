#this shell script is to test that cyclus is installed correctly, cyclus and cycamore unit tests pass, and simulations run successfully. 
#!/bin/bash

set -e

echo "============================"
echo "Checking Cyclus installation"
echo "============================"
which cyclus
cyclus --version

echo "========================="
echo "Running Cyclus unit tests"
echo "========================="
cyclus_unit_tests

echo "==========================="
echo "Running Cycamore unit tests"
echo "==========================="
cycamore_unit_tests

echo "====================================="
echo "Running input1.xml example simulation"
echo "====================================="
cyclus -v11 -i ./examples/input1.xml -o ./examples/input1_output.sqlite

echo "========================"
echo "checkimg output database"
echo "========================"
ls -lh ./examples/input1_output.sqlite

echo "SUCCESS: Cyclus environment works correctly"



