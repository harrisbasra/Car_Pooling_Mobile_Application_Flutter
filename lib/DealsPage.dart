import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';

import 'Switch_Confirmation.dart';
import 'Wallet.dart';


class DealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tDeals',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.shade400,
                            width: 1,
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 5,),
                          Text(
                            'Drinks',
                            style: TextStyle(fontFamily: 'UberMove',
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Expanded(child: SizedBox(width: 10)),
                          Image.asset("assets/images/bear.png", scale: 1.8,),
                          SizedBox(width: 5,),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                    height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.shade400,
                            width: 1,
                          )
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Party Tickets',
                          style: TextStyle(fontFamily: 'UberMove',
                            color: Color.fromRGBO(10, 77, 104, 1),
                            fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset("assets/images/tickets.png", scale: 1.8,),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.shade400,
                            width: 1,
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(width: 5,),
                          Text(
                            'Free Rides',
                            style: TextStyle(fontFamily: 'UberMove',
                                color: Color.fromRGBO(10, 77, 104, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Expanded(child: SizedBox(width: 10)),
                          Image.asset("assets/images/party.png", scale: 1.8,),

                          SizedBox(width: 5,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.shade400,
                            width: 1,
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'More Deals',
                            style: TextStyle(fontFamily: 'UberMove',
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset("assets/images/MoreDeals.png", scale: 1.8,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.white, Colors.white, Colors.grey.shade400],
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
                                style: TextStyle(fontFamily: 'UberMove',
                                  fontSize: 25,
                                  color: Color.fromRGBO(10, 77, 104, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'on party \ntickets',
                                style: TextStyle(fontFamily: 'UberMove',
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
                          width: 170, // Adjust the width as needed
                          height: 200, // Adjust the height as needed
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
              ),
              SizedBox(height: 50),
              Container(
                height: 130,
                width: 5000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/champagne.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Like to have \nsome bear?',
                        style: TextStyle(fontFamily: 'UberMove',
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: SizedBox(width: 10,)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 1, // Border width
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 2, bottom: 2),
                          child: Text("Learn More", style: TextStyle(fontFamily: 'UberMove',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
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
