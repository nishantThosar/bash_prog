#! /usr/bin/bash
# STRING="NULL BYTE"  #This is how we can make a variable in bash script
echo "Nishant uses $1" #This is how we can use CLA for replaacing the var "$1" insted. ( This is the first parameter )
echo $(whoami) #This is how a command is run in bash
echo $($2) # This is the 2nd parameter of CLA
#-----------------------------------------------------------------------------------------------------------------------
echo "Enter your name"
read name	#This works like scanf
echo "your name $name is nice"
#-----------------------------------------------------------------------------------------------------------------------

#//////////////////////////////////////////// loops ////////////////////////////////////////////////////////////////////

#1) if loop
echo "In loop now insert name2"
read name2
if [[ $name2 ]]; then
	#statements
	echo "$name2 found"
else
	echo "Name not found"
fi # Type this to end the loop (!important)

#CLA = Command line Argument