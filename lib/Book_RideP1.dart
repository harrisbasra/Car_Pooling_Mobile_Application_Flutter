import 'package:flutter/material.dart';
import 'package:test/EstimateCost.dart';
import 'package:test/SelectLocationMap.dart';

import 'ChatPage.dart';
import 'DealsPage.dart';
import 'Switch_Confirmation.dart';
import 'Wallet.dart';

class BookRide01 extends StatefulWidget {
  @override
  _BookRide01State createState() => _BookRide01State();
}

class _BookRide01State extends State<BookRide01> {
  double _sliderValue = 1;
  List<String> _options = ["Automatic Price", "Select Pricing Method", "Let Driver Choose"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          '\t\t\t\t\t\t\t\t\t\t\t\t\tBook Ride',
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
      body: Container(
        decoration: BoxDecoration(

        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Address',
                style: TextStyle(fontFamily: 'UberMove',fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset('assets/images/address_train.png', width: 40, height: 80),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            onTap: () {},
                            style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Pickup Address',
                              hintStyle: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontWeight: FontWeight.w200),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                              suffixIcon: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLocation()));
                                },
                                child: Icon(Icons.location_on),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300],
                          ),
                          child: TextField(
                            onTap: () {},
                            style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'Destination Address',
                              hintStyle: TextStyle(fontFamily: 'UberMove',color: Colors.black, fontWeight: FontWeight.w200),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                              suffixIcon: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectLocation()));
                                },
                                child: Icon(Icons.location_on),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'No. of People',
                style: TextStyle(fontFamily: 'UberMove',fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[300],
                ),
                child:DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Select No. of People',
                    hintStyle: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                    filled: true,
                    fillColor: Colors.grey[300], // Background color
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                  items: ['1','2', '3', '4']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),),
              SizedBox(height: 25),
              Text(
                'Pickup Time',
                style: TextStyle(fontFamily: 'UberMove',fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: 'Select Hours',
                          hintStyle: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300], // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        ),
                        items: ['00','01','02', '03', '04', '05', '06', '07','08','09', '10', '11', '12']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          hintText: 'Select Minutes',
                          hintStyle: TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey[300], // Background color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        ),
                        items: ['00','15', '30', '45',]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: TextStyle(fontFamily: 'UberMove',color: Colors.black)),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Price',
                style: TextStyle(fontFamily: 'UberMove',fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.blueGrey, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          children: [
                            Text('Automatic Price Calculation <<< ', style: TextStyle(fontFamily: 'UberMove',fontSize: 10, fontWeight: FontWeight.w300),),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Color.fromRGBO(8, 131, 149, 1),
                                )
                              ),
                            ),
                            Text(' >>> Let Driver suggest a price', style: TextStyle(fontFamily: 'UberMove',fontSize: 10, fontWeight: FontWeight.w300),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      _options[_sliderValue.round()],
                      style: TextStyle(fontFamily: 'UberMove',fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(10, 77, 104, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EstimateCost()));
                },
                child: Text(
                  'Book Ride',
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
