import 'package:flutter/material.dart';
import 'package:test/Wallet.dart';

import 'ChatPage.dart';
import 'Rides_Ratings.dart';
import 'Switch_Confirmation.dart';


class FinishDriverJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Ride Finished',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'UberMove',color: Colors.white),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox(height: 20)),
              Expanded(child: SizedBox(height: 10,)),Text(
                "You have successfully Completed your Ride",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'UberMove',
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Image.asset("assets/images/DriverSuccess.png", scale: 1.5,),
              Expanded(child: SizedBox(height: 10,)),Text(
                "How was your experience with customer?",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'UberMove',
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onTap: () {},
                maxLines: 5,
                style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter Comments...',
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
              Expanded(child: SizedBox(height: 20)),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(10, 77, 104, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Wallet()));
                },
                child: Text(
                  'End',
                  style: TextStyle(fontFamily: 'UberMove',
                    color: Color.fromRGBO(0, 255, 202, 1),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 80,
        child: Column(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                      Image.asset("assets/images/navchat.png", scale: 2,),
                      SizedBox(height: 10,),
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
                      Image.asset("assets/images/nav_recent.png", scale: 2,),
                      SizedBox(height: 10,),
                      Text('Recent'),
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
                          child: Image.asset("assets/images/PartyJugs.png", height: 55, width: 55,)

                        // Icon(
                        //   Icons.drive_eta,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                      ),
                      Text('Party mode', textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Wallet()));
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/images/nav_wallet.png",scale: 2,),
                      SizedBox(height: 10,),
                      Text('Wallet'),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                Column(
                  children: [
                    Image.asset("assets/images/nav_menu.png", scale: 2,),
                    SizedBox(height: 10,),
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
