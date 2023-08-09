import 'package:flutter/material.dart';
import 'package:test/TrackLocation.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chat with Driver'),
        ),
        body: Column(
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
            Divider(height: 1.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {},
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
                          filled: true,
                          fillColor: Colors.white, // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.black),
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
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        // Handle sending message
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
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
