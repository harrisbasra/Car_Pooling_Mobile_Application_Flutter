import 'package:flutter/material.dart';


class DealsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 77, 104, 1),
        title: Text('Deals', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Drinks',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset("assets/images/bear.png", scale: 1.8,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Party Tickets',
                          style: TextStyle(
                            color: Color.fromRGBO(10, 77, 104, 1),
                            fontSize: 15,
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
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Free Rides',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          Image.asset("assets/images/party.png", scale: 1.8,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'More Deals',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
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
                        style: TextStyle(
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
                          child: Text("Learn More", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                Column(
                  children: [
                    Icon(Icons.card_giftcard, color: Color.fromRGBO(10, 77, 104, 1),),
                    Text('Deals'),
                  ],
                ),
                Expanded(flex: 2, child: SizedBox(width: 10,)),
                Column(
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
