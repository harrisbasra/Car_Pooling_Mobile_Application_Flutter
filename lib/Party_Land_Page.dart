import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/BookingAccepted.dart';
import 'package:test/DealsPage.dart';
import 'package:test/Profile_View.dart';
import 'package:test/Switch_Confirmation.dart';

import 'DriverArrived.dart';

class Party_Land_Page extends StatelessWidget {
  final String username;
  final String userID;

  Party_Land_Page({required this.username, required this.userID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 25,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                  child: Text.rich(
                    TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(10, 78, 105, 1),
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' $username',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 130,
              width: 5000,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/party_car.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'wanna earn money with us?',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'switch to Driver mode',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(10, 77, 104, 1),
                    Color.fromRGBO(64, 132, 116, 1.0),
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Image.asset('assets/images/dance.png', scale: 1.2,),
                  SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        minimumSize: Size(double.infinity, 65),
                      ),
                      onPressed: (){

                      },
                      child: Text(
                        'Go-To Party',
                        style: TextStyle(
                          color: Color.fromRGBO(10, 77, 104, 1),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Deals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(10, 77, 104, 1),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    elevation: 10,
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.grey.shade300, Colors.white],
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get up to \n50% off',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(10, 77, 104, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'on party \ntickets',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(10, 77, 104, 1),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 160, // Adjust the width as needed
                              height: 180, // Adjust the height as needed
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10), ),
                                      child: Image.asset(
                                        'assets/images/beach.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [Colors.grey.shade300,Colors.transparent, Colors.transparent],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 80,
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Expanded(flex: 1, child: SizedBox(width: 10,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5,),
                  Icon(Icons.chat, color: Color.fromRGBO(10, 77, 104, 1),),
                  Text('Text Driver', textAlign: TextAlign.center, ),
                ],
              ),
              Expanded(flex: 2, child: SizedBox(width: 10,)),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DealsPage()));
                },
                child: Column(
                  children: [
                    Icon(Icons.card_giftcard, color: Color.fromRGBO(10, 77, 104, 1),),
                    Text('Deals'),
                  ],
                ),
              ),
              Expanded(flex: 2, child: SizedBox(width: 10,)),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Switch_Confirm()));
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                       // color: Color.fromRGBO(10, 77, 104, 1),
                      ),
                      child: Image.asset("assets/images/steering.png", height: 50, width: 50,)

                      // Icon(
                      //   Icons.drive_eta,
                      //   size: 30,
                      //   color: Colors.white,
                      // ),
                    ),
                    Text('Driver mode', textAlign: TextAlign.center,),
                  ],
                ),
              ),
              Expanded(flex: 2, child: SizedBox(width: 10,)),
              Column(
                children: [
                  Icon(Icons.account_balance_wallet, color: Color.fromRGBO(10, 77, 104, 1),),
                  Text('Wallet'),
                ],
              ),
              Expanded(flex: 2, child: SizedBox(width: 10,)),
              Column(
                children: [
                  Icon(Icons.menu, color: Color.fromRGBO(10, 77, 104, 1),),
                  Text('Menu'),
                ],
              ),
              Expanded(flex: 2, child: SizedBox(width: 10,)),
            ],),
          ],
        ),
      ),
    );
  }
}
