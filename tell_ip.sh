echo "Which IP you want to know"
echo "broadcast=b, loopback=l"
read which  #variable to read from CLI
echo "Waiting for your input"

if [[ "$which" == "b" ]]; then
	#statements
	echo "BROADCAST IP: "$(ifconfig | grep broadcast | awk '{print $2 " " $3 " " $4}')
fi

if [[ "$which" == "l" ]]; then
	#statements
	echo "loopback ip: " $(ifconfig | grep 127 | awk '{print $2 " " $3 " " $4}')
fi

# echo "" #just for space
# echo "you can also try another script which accepts input by CLI"
# echo "do you want to try? [y/n]"
# read dec
# if [[ "$dec" == "y" ]]; then
# 	#statements
# 	echo "visit "
# else
# 	echo "Thankyou for using Nishant's code"
# fi