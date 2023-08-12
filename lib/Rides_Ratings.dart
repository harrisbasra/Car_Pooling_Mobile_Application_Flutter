import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';
import 'package:test/Landing%20Page.dart';

import 'Wallet_2.dart';


class RideRatings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Rides Ratings',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
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
      body: ListView(
        children: [
          RatingCards(
            driverName: 'John Doe',
            timeOfRide: '10:00 AM',
            driverRatings: 4.5,
            price: '\$25',
          ),
          RatingCards(
            driverName: 'Jane Smith',
            timeOfRide: '2:30 PM',
            driverRatings: 4.8,
            price: '\$20',
          ),
          RatingCards(
            driverName: 'John Doe',
            timeOfRide: '10:00 AM',
            driverRatings: 4.5,
            price: '\$25',
          ),
          RatingCards(
            driverName: 'Jane Smith',
            timeOfRide: '2:30 PM',
            driverRatings: 4.8,
            price: '\$20',
          ),
          RatingCards(
            driverName: 'Jane Smith',
            timeOfRide: '2:30 PM',
            driverRatings: 4.8,
            price: '\$20',
          ),
          // Add more instances of RatingCards here
        ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Landing_Page()));
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


class RatingCards extends StatelessWidget {
  final String driverName;
  final String timeOfRide;
  final double driverRatings;
  final String price;

  RatingCards({
    required this.driverName,
    required this.timeOfRide,
    required this.driverRatings,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1,
          )
        ),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  Icon(Icons.star, color: Colors.amber,),
                  SizedBox(width: 5,),
                  Text(
                    '$driverRatings Stars', // Driver's ratings value
                    style: TextStyle(
                      color: Color.fromRGBO(10, 77, 104, 1), // RGB(10,77,104)
                    ),
                  ),
                  Expanded(child: SizedBox(width: 5,),),
                  Text(
                    '$price', // Price value
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(10, 77, 104, 1), // RGB(10,77,104)
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: InkWell(
                      onTap: (){

                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user.png'),
                        radius: 10,
                      ),
                    ),
                  ),
                  Text(
                    '$driverName',
                    // Driver's name value
                    style: TextStyle(
                      fontSize: 25,

                      color: Color.fromRGBO(10, 77, 104, 1), // RGB(10,77,104)
                    ),
                  ),
                  Expanded(child: SizedBox(width: 10,),),
                  Text(
                    '$timeOfRide', // Time of ride value
                    style: TextStyle(
                      color: Color.fromRGBO(10, 77, 104, 1), // RGB(10,77,104)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
