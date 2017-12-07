#!/bin/bash

mail=""
pid=""
i=1

while [ "$i" -le "$(wc -l list.mail | cut -d ' ' -f 1 )" ]
do
	echo "$i. $(sed " $i q;d" list.mail | cut -d  ':' -f 1)"
	i=$((i + 1 ))

done
echo "$i. Autre"
read -p "Select a mail: " num
if [ "$num" == "$i" ]
then
	read -p "Enter a mail: " mail
	read -p "Enter his/her name: " name
	echo "$name:$mail" >> list.mail
else
	mail=$(sed  "$num q; d" list.mail | cut -d ':' -f 2)
fi
echo "Selected mail: $(tput setaf 2)$mail"
message=$2
subject=$1
attachment=$3
echo -e "$(tput sgr0; tput bold; tput setab 4 )Subject: $subject\n$message$(tput sgr0)"
read -p "Do you want to continue? [y/n] " send
if [ "$send" == "n" ]
then
	exit 1
fi 

echo -e "$2\n\nSincerely,\n\nUnknown" > /tmp/message
if [ -z "$3" ]
then
	mutt -s "$subject" $mail < /tmp/message & pid=$!; s='-\|/'; i=0; while kill -0 $pid; do i=$(( (i+1) %4 ));  printf "\r${s:$i:1} $(tput sgr0; tput bold; tput setab 4 ) [sending your mail]$(tput sgr0)"; sleep .1; done 2> /dev/null
	
else
	mutt -s "$subject" -a "$attachment" -- $mail < /tmp/message & pid=$!; s='-\|/'; i=0; while kill -0 $pid; do i=$(( (i+1) %4 )); printf "\r${s:$i:1} $(tput sgr0; tput bold; tput setab 4 ) [sending your mail and attachment]$(tput sgr0)"; sleep .1; done 2> /dev/null
	
fi
echo -e "\n"
if [ $? -eq 0 ]; then
    echo "$(tput sgr0; tput setaf 2 )Mail sent successfully$(tput sgr0)"
else
    echo "$(tput sgr0; tput setaf 1 )Mail not sent$(tput sgr0)"
fi

