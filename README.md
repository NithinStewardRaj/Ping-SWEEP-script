# Ping-SWEEP-script-for-24-network
This is a script to scan for the available hosts in your /24 network 



This is .sh (shell) script to scan your network for available Hosts in your /24 network 

if you dont know what is /24. it is a subnet value. 

available hosts in your /24 network is ==> 256

1st and last ip will be left for network id and broadcast id and other ip's are the available host id.

in this simple ping sweep script i have done 



explaination of the code 
{
1st line is an common written for god sake ;)

we are including an if statement 
if statement is like "if this condition is satisfied do this or do other thing"
$1 is an attribue is empty 

then 

print the 

echo "You Forgot to enter your ip address:("
echo "Syntax ==> ./ipsweep.sh (your ip to scan)"
echo "example: ./ipsweep.sh 192.168.4"


now else is used 

else 

for ip in `seq 1 254`; do


ip ==> this is an place holder later used in the code 
seq 1 254 ==> go all the way down from the number 1 to 254 then 

do

the following command 

ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 

ping for the count 1 $1 is the attribute entered later to the command ./pingsweep.sh (what ever entered in here ater the command is attribute 1)
$ip it gets it input from the line 10 for ip in `seq 1 254`it enters the value from 1 to all the way down to the last number 254.

greping the line of 64 bytes for the input and using cut command to take the particular parameter and tr to remove : from the output 


done

fi


}

now we can also use this output to save it in a file and give as an input to the nmap scan 
& that will be laterly discussed :) 

                                                      
