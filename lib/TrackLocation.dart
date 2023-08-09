import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';


class TrackLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 77, 104, 1),
        title: Text('Track Location', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
