# Project Title

Fast terminal mail sender

## Getting Started

The selmail.sh file is the main file. You can put it whether on your ~ (home) or make it a global script. 

### Prerequisites

Install

```
mutt
```
and 

```
ssmtp
```
Configure ssmtp, and both of the file should be in the same directory.
Don't forget to use a gmail account.

### Installing

Use the file list.mail to add all your mail inside.
See the example inside the mail and replicate.

```
myname:mymail@maily.com
```

### Optional
You can modify your .bash_aliases to change the name when executing.

#How to use it

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


