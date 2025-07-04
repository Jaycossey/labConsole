#!/bin/bash

echo "Welcome, $(whoami), Show off a bit, write an ascii banner for this, would be fun and nicer to see than your IP address"
echo "Choose from the following:"
echo "(0) Read Patch Notes"
echo "(1) Read Vulnerability Reports"
echo "(2) About"
echo "(3) Portal"
echo "(4) README"
read welcomeChoice
currentDir=$(pwd)

welcome() {
	# Handles basic input selection for user
	#  switch case determines gateway steps for application.
	case $welcomeChoice in
		# Patch Notes Read Logic
		#  handles GET requests for Patch Notes
		0 ) 
			echo "Loading PN";;
		# Pentest | Vulnerability Report Read logic
		#  handles GET requests for Vulnerability reports, requires user role
		#  prompts user to choose from a list of ID's to return the file
		1 ) 
			echo "Loading VR";;
		# About section logic
		#  returns file from db about author for potential employers
		2 ) 
			echo -e "Finding file...\nCurrent working directory: $currentDir\nMaking connection (Work in Progress)..."
			# write file read from local temporarily, 
			cat $currentDir../db/misc/about.txt
			echo "Loading About Me..."
			;;
		# Admin login portal logic
		#  prompts user for choice of create user or login
		#  handles login for admin users to be able to create files (level 1 access), 
		#  or sadmin to allow for all CRUD operations to exist.
		#  also handles creation of "user" accounts with read-only level access 
		3 ) 
			echo -e "Choose from the following:\n(0) Login\n(1) Create user account\n(2) Back\n"
			read pChar
			case $pchar in
				0 )
					echo -e "Enter Username:\n"
					read user
					echo -e "Enter Password:\n"
					read -s pass
					echo -e "Checking password... (::TODO::)";;
				1 )
				       	echo -e "Choose a Username:\n"
			       		read user
			 		echo -e "Choose a Password:\n"
					read -s pass
					echo "Hashing password (::TODO::)";;
				2 ) 
					welcome
					;;
			esac
			;;
		# README / about project logic
		#  displays project's readme file, containing technical details, current version and man pages
		4 ) 
			cat README.md
	esac
}

welcome
