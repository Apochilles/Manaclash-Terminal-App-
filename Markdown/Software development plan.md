
# Software Development Plan - Manaclash application
### by Luke Dawson 


## Statement of Purpose and Scope:

Manaclash! You are the creator: is an application that allows the user to produce digital playing cards from my new collectible card game of the same name and amass them into their own personal database of cards that can be viewed through the app.

My Create A New Card feature allows the user to name and describe a creature or spell of their choice and assign them attributes from a list of abilities.

My Export feature takes the attributes determined by user input and writes them into my attached CSV file.

Once the user has experimented with creating cards they can view them with the Display Card feature which allows the user to read the attached CSV containing their constructed cards and the sample Manaclash cards I have previously made.

Collectible card game players like to mess around with different systems of games but most never give you the opportunity to be creative with designs. Create A New Card feature allows the user to be as expressive as they want within the confines of these rules and save their creations for future reference and sharing. My app was developed on my belief that card games are developing out the physical realm and into a digital platform that is more economical and more portable. 


My target audience is those who enjoy collectible card games such as Magic the Gathering, Yugi-oh and Pokemon. People who enjoy these kinds of games don’t often stick to a brands as they enjoy learning new rule sets and systems so I think my game would excite them. My target audience also includes creative people who enjoy messing around and creating funny imaginary spells and creatures. 

As my app has limited features at the moment I believe my core audience will mainly use it casually. Most likely when they don’t have physical cards handy or just feel like diving into a fresh experience on the go. I believe there is also a sharing aspect to the app as people will most likely want to show off their creations to friends and family. 

## Features

### Feature one: Create A New Card:

My first feature, Create A New Card, will employ the use of methods within a do loop. When you run the method that triggers this feature it will work it’s way through conditional methods that allow the user to continue within the loop if the data they input is acceptable based on my parameters. Some of my methods require the user to select from a list of options and some are free form and one is locked to the input of an integer. Once all of my variables have been assigned values it pushes the data into an array and displays the values in the terminal display. 

### Feature two: Export

My second feature, Export, takes an array of values that the user created in feature one  and uses file handling to write the values assigned by the user to an attached CSV. It uses the .open method to read the csv and uses a do loop to apply each of my assigned variables to a row in my CSV to be stored. Once written these files will remain in the CSV for future reference by the user. This way the user can collect the cards as they create them and continue to accumulate their collection.  

### Feature three: Display Card

My third feature will use file handling to access values in an attached CSV file and use the read function to display these within my app.  By selecting this feature from the menu the app will print the CSV of data to the screen with the headers:true method to display my cards in readable rows as opposed to an indecipherable list of values.  

### Original plan 

## User Interaction and Experience:

My user will interact with app by first running the file in the command line. Once it runs they will be offered 3 options:

1. Create a new card
2. Display card list 
3. Exit

If the user is having trouble running the application or using any of the features in the menu they should consult the attached read me file

If they select option '1' by inputting 1 into the keyboard it will start the method of creating a card. The user will be asked a series of questions and when they have satisfied the criteria of the questions the values will be pushed into an array and written to the attached CSV

If they select option '2' by inputting 2 into the keyboard app will read the CSV through file handling and display the stored data to the user in the terminal.

If they select option '3' by inputting 3 on the keyboard it terminates the program and brings you back to the command line.

When an error is encountered option 1 by inputting unacceptable data the loop will return to the start until the user inputs the correct information.


## Inplementation Plan

### Purpose: 

Made with the intent to express my understanding with fundamental Ruby concepts while referencing something that I am familiar with. I’m building it with the express intention to build on the frame work once I have more time and a greater understanding of Ruby and App development.

The user experience is intended a fun and creative way to come up with some collectible cards. The presentation will utilize graphical gems to enrich the viewers aesthetic needs which still being user friendly and creative.


### Control Flow Diagram



### Implementation Plan

This is my implementation plan. Obviously it wasn't strictly adhered as I had to change my features on the final day. 

insert pictures here 


