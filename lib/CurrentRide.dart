import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';
import 'package:test/FinishRide.dart';

import 'DealsPage.dart';
import 'Switch_Confirmation.dart';
import 'Wallet.dart';


class CurrentRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Current Ride',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontFamily: 'UberMove',fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
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
                        style: TextStyle(fontFamily: 'UberMove',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      Text(
                        '  3 Persons',
                        style: TextStyle(fontFamily: 'UberMove',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      Text(
                        '  \$523',
                        style: TextStyle(fontFamily: 'UberMove',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(10, 77, 104, 1),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        ' 120, NY, New York State, US',
                        style: TextStyle(fontFamily: 'UberMove',
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
            SizedBox(height: 100),

          ],
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
                      Text('Text Driver', textAlign: TextAlign.center, ),
                    ],
                  ),
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DealsPage()));
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/images/nav_gift.png", scale: 2,),
                      SizedBox(height: 10,),
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
                          child: Image.asset("assets/images/steering.png", height: 55, width: 55,)

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
