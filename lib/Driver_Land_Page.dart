import 'package:flutter/material.dart';
import 'package:test/BookingAccepted.dart';
import 'package:test/CurrentRide.dart';
import 'package:test/DealsPage.dart';
import 'package:test/Party_Land_Page.dart';
import 'package:test/Profile_View.dart';
import 'package:test/Switch_Confirmation.dart';

import 'Book_RideP1.dart';
import 'ChatPage.dart';
import 'CustomerAccepted.dart';
import 'DriverArrived.dart';
import 'Rides_Ratings.dart';
import 'Wallet.dart';
import 'Wallet_2.dart';

class Driver_Land_Page extends StatefulWidget {
  final String username;
  final String userID;

  Driver_Land_Page({required this.username, required this.userID});

  @override
  _DriverLandPageState createState() => _DriverLandPageState();
}

class _DriverLandPageState extends State<Driver_Land_Page> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 25),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 5),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                                  },
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/user.png'),
                                    radius: 15,
                                  ),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Hello, ',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(10, 78, 105, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: widget.username, // Use widget.username here
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber,),
                                SizedBox(width: 5),
                                Text(
                                  "4.2",
                                  style: TextStyle(color: Colors.amber, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "250 Ratings",
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1.0),
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(flex: 1, child: SizedBox(width: 10,)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            value: _isSwitched,
                            onChanged: (value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                          ),
                        ),
                        Text(
                          '${_isSwitched ? 'Available' : 'Unavailable'}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),
              ),
            ),
            Divider(),
            OfferCards(driverName: "",starRating: 10,offeredPrice: 20),
            OfferCards(driverName: "",starRating: 10,offeredPrice: 20),
            OfferCards(driverName: "",starRating: 10,offeredPrice: 20),

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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,),
                      Icon(Icons.chat, color: Color.fromRGBO(10, 77, 104, 1),),
                      Text('Text Goer', textAlign: TextAlign.center, ),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RideRatings()));
                  },
                  child: Column(
                    children: [
                      Icon(Icons.recent_actors, color: Color.fromRGBO(10, 77, 104, 1),),
                      Text('Rides'),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Party_Land_Page(username: widget.username, userID: widget.userID)));
                  },
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Color.fromRGBO(10, 77, 104, 1),
                          ),
                          child: Image.asset("assets/images/PartyJugs.png", height: 50, width: 50,)

                        // Icon(
                        //   Icons.drive_eta,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                      ),
                      Text('Party Goer', textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Driver_Wallet()));
                  },
                  child: Column(
                    children: [
                      Icon(Icons.account_balance_wallet, color: Color.fromRGBO(10, 77, 104, 1),),
                      Text('Wallet'),
                    ],
                  ),
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


class OfferCards extends StatefulWidget {
  final String driverName;
  final double starRating;
  final double offeredPrice;

  OfferCards({
    required this.driverName,
    required this.starRating,
    required this.offeredPrice,
  });

  @override
  _OfferCardsState createState() => _OfferCardsState();
}

class _OfferCardsState extends State<OfferCards> {
  bool awarded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1.0),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text(
                'New Driver Request',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(10, 77, 104, 1),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 15,
                    ),
                  ),
                ),
                Text(
                  'John MacCanzie',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(10, 77, 104, 1),
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.star, color: Colors.amber,),
                SizedBox(width: 5),
                Text(
                  "4.2",
                  style: TextStyle(color: Colors.amber, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Image.asset('assets/images/address_train.png', width: 40, height: 120),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' 102, NY, New York State, US',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      Text(
                        '  3 Persons',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      Text(
                        '  \$523',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        ' 120, NY, New York State, US',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '\$245  Automatically Calculated',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(68, 222, 2, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(10, 77, 104, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomerAccepted()));
                },
                child: Text(
                  'Accept Request',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 255, 202, 1),
                    fontSize: 16.0,
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