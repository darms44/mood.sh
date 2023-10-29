#!/bin/bash
while true; do
echo "What is your first name?"
read name 
if [ $name ]; then 
	  echo "Hello $name! I'm Harvy, it's nice to meet you!"
fi
sleep .3s
shopt -s nocasematch
while true; do
	read -p "How are you today?" mood
	mood=${mood,,}
    case $mood in
	happy) echo "That's great $name! I am happy too!"; break;;
	sad) echo "Darn, I'm sorry to hear that $name. I hope things are better soon."; break;;
	tired) echo "Sounds like you need to recharge your batteries, I know I do!"; break;;
	*) echo "I'm sorry, I don't understand that, please enter 'happy, sad or tired'.";;
	esac
done 
sleep .2s
while true; do
	read -p "What is the time of day?" time
	time=${time,,}
    case "$time" in
	morning)  
		case "$mood" in  
		happy) echo "It is a beautiful morning, $name!"; break;;
		sad) echo "It's still early, I hope it gets better for you $name :)"; break;;
		tired) echo "I think its coffee time!"; break;;
		esac
esac
case "$time" in
	afternoon|noon)
		case "$mood" in
		happy) echo "What an exciting day!"; break;;
		sad) echo "Brighter days are just around the corner $name!";break;;
		tired) echo "Maybe a nap will help?"; break;;
		esac
esac
case "$time" in 
	night|evening)
		case "$mood" in
		happy) echo "I'm glad that you had a good day $name :)"; break;;
		sad) echo "Well $name, at least the day is over, Tomorrow is a new day!"; break;;
		tired) echo "Then go to bed!"; break;;
	        esac
esac
case "$time" in
        *) echo "I don't understand, Please enter 'morning, noon or night'.";;
     esac
done
sleep .2s
	read -p "Would you like to try again?" redo
	redo=${redo,,}
	case $redo in
		yes) ;;
		no) echo "Ok, thanks for talking with me today $name!"; break;;
	esac
done
