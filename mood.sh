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
	alright) echo "alright alright alright"; break;;
	angry|mad) echo "I'm sorry that you are upset. Take some deep breaths and don't over react."; break;;
	great|wonderful) echo "Awesome $name!! I'm so happy for you!"; break;;
	ok) echo "okie dokie artichokie"; break;;
	fuck*you|fuck*off) echo "Really? FUCK YOU! Buddy."; break;;
	*) echo "I'm sorry, I don't understand that, please enter 'happy, sad, tired etc...'.";;
	esac
done 
sleep .2s
while true; do
	read -p "What is the time of day?" time
	time=${time,,}
    case "$time" in
	morning)  
		case "$mood" in  
		happy|alright|ok) echo "It is a beautiful morning, $name!"; break;;
		sad) echo "It's still early, I hope it gets better for you $name :)"; break;;
		tired) echo "I think its coffee time!"; break;;
		angry|mad) echo "Try to do something for yourself $name, self care is vital"; break;;
		great|wonderful) echo "Make it the best day ever $name!"; break;;
		fuck*you|fuck*off) echo "Go fuck yourself"; break;;
		esac
esac
case "$time" in
	afternoon|noon)
		case "$mood" in
		happy|great|wonderful) echo "What an exciting day!"; break;;
		sad) echo "Brighter days are just around the corner $name!";break;;
		tired) echo "Maybe a nap will help?"; break;;
		alright|ok) echo "Is it lunch time yet?"; break;;
		angry|mad) echo "Take a break $name, it might help :)"; break;;
                fuck*you|fuck*off) echo "Good for you, bitch."; break;;
		esac
esac
case "$time" in 
	night|evening)
		case "$mood" in
		happy) echo "I'm glad that you had a good day $name :)"; break;;
		sad) echo "Well $name, at least the day is over, Tomorrow is a new day!"; break;;
		tired) echo "Then go to bed!"; break;;
		alright|ok) echo "Have a good evening $name"; break;;
                angry|mad) echo "Get some rest $name, tomorrow can be a better day."; break;;
		great|wonderful) echo "That's awesome $name :)"; break;;
                fuck*you|fuck*off) echo "I hope you have nightmares."; break;;
	        esac
esac
case "$time" in
        *) echo "I don't understand, Please enter 'morning, noon or night'.";;
     esac
done
sleep .3s
	read -p "Would you like to try again?" redo
	redo=${redo,,}
	case $mood in
		fuck*you|fuck*off) echo "Cunt"; break;;
	esac
	case $redo in
		yes) ;;
		no) echo "Ok, thanks for talking with me today $name!"; break;;
	esac
done
