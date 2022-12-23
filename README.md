# Ocean - a multi-user and multi-room chat app
### We are:
- Geraldine Hürzeler
- Damian Kobler
- Tishana Suthenthiran

### Describtion
The Ocean chat app is a web application based on Elixir and the Phoenix Framework. Users can send messages to three different chatrooms or topics. The chatrooms are multi-user, so it is like a group chat where everyone can see all of the messages and also broadcast a message to all of the users connected to that chatroom. For adding a fun and colorful part, the app is ocean themed and there are animated ocean animals that swim across the screen based on which groupchat they joined.

The database is hosted in PostgreSQL and the database management and connection is handled by Ecto.

### Repository structure
```bash
.
├── documentation   # Documentation in form of the report and presentation slides
├── src             # Source files for the Phoenix app
└── README.md
```
###  How to start the application
1. Make sure you have the most recent version of Elixir, Phoenix and PostgreSQL and that the PostgreSQL server is running
2. Clone the repository to your device using terminal and *'git clone https://github.com/damiankobler/Ocean.git'*
3. Change into the src directory with *'cd Ocean/src/'*
4. Run the command *'mix setup'* to setup the Phoenix app and install all dependencies
5. Run the command *'mix phx.server'* to run the Phoenix app
6. Open *'localhost:4000'* in two web browsers and begin sending messages in the three chatrooms

### [Demonstration of the App](https://youtu.be/mSrQhnMA3wY "App Demonstration")
To see the successful start und running of the application we made a short video that opens the app in two browser windows and shows the functionalities and features we implemented like sending messages in multiple chatrooms and showing ocean animals.
