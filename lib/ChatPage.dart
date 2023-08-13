import 'package:flutter/material.dart';
import 'package:test/TrackLocation.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\t\t\t\t\t\t\t\t\t\tChat With Driver',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'UberMove',color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        backgroundColor: Color.fromRGBO(10, 77, 104, 1),
        elevation: 0,
      ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/shave_background.png"),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ChatMessage(isSentByMe: true, text: 'Hello there!'),
                    ChatMessage(isSentByMe: false, text: 'Hi! How are you?'),
                    // Add more ChatMessage widgets here
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onTap: () {},
                            style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                              hintStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                              filled: true,
                              fillColor: Colors.white, // Background color
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.location_on),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackLocation()));
                          },
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromRGBO(10, 77, 104, 0.8),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              // Handle sending message
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String text;

  ChatMessage({required this.isSentByMe, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSentByMe) CircleAvatar(child: Icon(Icons.person)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(text),
          ),
          if (isSentByMe) CircleAvatar(child: Icon(Icons.person)),
        ],
      ),
    );
  }
}
