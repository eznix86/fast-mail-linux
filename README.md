# Fast terminal mail sender

## Getting Started

The selmail.sh file is the main file. You can put it whether on your ~ (home) or make it a global script. 

### Prerequisites

Install the email client

```
mutt
```
and the send-only sendmail emulator

```
ssmtp
```

Configure ssmtp,
link: http://tombuntu.com/index.php/2008/10/21/sending-email-from-your-system-with-ssmtp/

- Both of the file should be in the same directory (for e.g ~ (home directory)).
- Using a gmail account is recommended.

### Installing

__NOT COMPULSORY
Step 1: Copy the two files on your ~ (home)
Step 2: Make selmail.sh executable
Step 3: using .bash_aliases to modify its name, ex.
```
cd ~
echo "alias post='bash selmail.sh'" >> .bash_aliases
```
This will change the name from "selmail.sh" to "post"
And you are done, you can edit the file selmail.sh to add a "Sincerely...etc" in it.
Example:
```
post "My Subject" "This is my message" Attachment/to/path/file.txt
```
Press enter
Then choose an option and you are done.

### To remember
Use the file list.mail to add all your contact mail inside.
See the example inside the mail and replicate.

```
myname:mymail@maily.com
```
Don't forget to make it executable: 
```
chmod +x selmail.sh
```

### Optional
You can modify your .bash_aliases to change the name when executing.

### How to use it

```
bash selmail.sh "Subject" "Message" files
```
With quotes.

Example of sending a simple mail without .bash_aliases

```
bash selmail.sh "My project" "We have a meeting this afternoon,\nDon't forget the gift"
```

Example of sending a simple mail with attachment without .bash_aliases

```
bash selmail.sh "Homework" "Please find as attached my homework" ~/Desktop/homework.pdf
```


