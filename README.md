# Bash : Terminal Based CRUD Security Interface  

> Terminal based application used to interact with a custom HTTP server and database written in bash, because I can, because I am an adult and noone can stop me!

## Description | Scope

```
This command line application should be an interactive interface allowing for a guest user to read patch notes and vulnerability reports. 

This command line application should call an custom API which returns a JSON object, this is read through a custom JSON PARSER written in Pure C. 

This command line application should allow for an admin account to login and check the username:password against a custom database.

This command line application should allow the admin user to handle CRUD operations through the API.

_________________________________________________________________________________________________________________________________________________

The final program will serve as a running service on a separate physical machine connected through a LAN.

The final program will be tested both internally and externally and serve as a basis to improve security of a system.

_________________________________________________________________________________________________________________________________________________

Through this labConsole application, I aim to learn how to use systems remotely, how to defend against unauthorised access, and how to report on my findings.

Through this labConsole application, I will also strengthen skills in using scripting languages, writing console based applications and understanding how to host and access data remotely.

Through this labConsole application, I will deepen my understanding of both blue and red team engagements by analysing configurations and network traffic, and improving the security of the application. 
  

```

## Short vs Long Term

```
This is essentially my new home lab that I am actually building here. I am building something to test, and improve upon my own skills, but in my own way.
I am not a traditional education type of person, and this is how I learn, by doing. For those who come across this repo, updates will be sparse and when I am happy that the code is ready for V1.0. 

This will be, for now, the skeleton console of the application. I just need it to handle the direction logic, this is the "Front End" application, where I will be handling updates on the Blue Team and "Blog User|Reader" style, so patch notes and reading logs. This current iteration at this stage needs to just be the GUI, I will write the connections once ALL the remaining components have been built out. 

Short term should just be the text you see on screen, no functionality.

Long term (after reemaining components have been added) will be linking api etc together. Might need to build some template functionality within each part but not to worry just yet. 

```

### Author Notes: 

This is a personal project, and will be updated over time when I am happy with each stage. 
