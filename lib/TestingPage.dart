import 'package:flutter/material.dart';
import 'package:test/BookingAccepted.dart';
import 'package:test/CustomerAccepted.dart';
import 'package:test/DriverArrived.dart';
import 'package:test/DriverNotFound.dart';
import 'package:test/Driver_Land_P2.dart';
import 'package:test/FinishDriverJob.dart';
import 'package:test/FinishRide.dart';

import 'DriverOffers.dart';

class TestingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Notification Based Pages'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingAccepted()));
              },
              child: Text('Booking Accepted'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerAccepted()));
              },
              child: Text('Customer Accepted'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DriverArrived()));
              },
              child: Text('Driver Arrived'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DriverNotFound()));
              },
              child: Text('Driver Not Found'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FinishRide()));
              },
              child: Text('Finish Ride'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FinishDriverJob()));
              },
              child: Text('Finish Driver Job'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DriverPage()));
              },
              child: Text('Available Drivers'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Driver_Land_P2(username: "John Doe",userID: "FS",)));
              },
              child: Text('Driver Land'),
            ),
          ],
        ),
      ),
    );
  }
}
