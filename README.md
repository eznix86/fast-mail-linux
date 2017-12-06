# Project Title

Fast terminal mail sender

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

Configure ssmtp
link on how to configure ssmtp: http://tombuntu.com/index.php/2008/10/21/sending-email-from-your-system-with-ssmtp/

Both of the file should be in the same directory (for e.g ~ (home directory))
how to configure
Using a gmail account is recommended.

### Installing

Use the file list.mail to add all your mail inside.
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

###How to use it

```
selmail.sh "Subject" "Message" files
```
With quotes.

Example of sending a simple mail

```
selmail.sh "My project" "We have a meeting this afternoon,\nDon't forget the gift"
```

Example of sending a simple mail with attachment

```
selmail.sh "Homework" "Please find as attached my homework" ~/Desktop/homework.pdf
```


