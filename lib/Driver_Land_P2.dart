import 'package:flutter/material.dart';
import 'package:test/Profile_View.dart';
import 'package:test/Switch_Confirmation.dart';
import 'ChatPage.dart';
import 'CustomerAccepted.dart';
import 'Rides_Ratings.dart';
import 'Wallet.dart';

class Driver_Land_P2 extends StatefulWidget {
  final String username;
  final String userID;

  Driver_Land_P2({required this.username, required this.userID});

  @override
  _DriverLandP2State createState() => _DriverLandP2State();
}

class _DriverLandP2State extends State<Driver_Land_P2> {
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
                                  style: TextStyle(fontFamily: 'UberMove',
                                    fontSize: 25,
                                    color: Color.fromRGBO(10, 78, 105, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: widget.username, // Use widget.username here
                                      style: TextStyle(fontFamily: 'UberMove',
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
                                  style: TextStyle(fontFamily: 'UberMove',color: Colors.amber, fontSize: 18),
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
                            style: TextStyle(fontFamily: 'UberMove',
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
                        Center(
                          child: SwitchTheme(
                            data: SwitchThemeData(
                              thumbColor: MaterialStateProperty.all<Color>(
                                  Color.fromRGBO(0, 255, 202, 1)),
                              // inactiveTrackColor: Color.fromRGBO(202, 202, 202, 1),
                              // inactiveThumbColor: Color.fromRGBO(232, 234, 233, 1),
                              // activeColor: Colors.transparent,
                            ),
                            child: CustomSwitch(
                              value: _isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  _isSwitched = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Text(
                          '${_isSwitched ? 'Available' : 'Unavailable'}',
                          style: TextStyle(fontFamily: 'UberMove',fontSize: 18),
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox(width: 10,)),
                  ],
                ),
              ),
            ),
            Divider(),
            OfferCardsP2(driverName: "",starRating: 10,offeredPrice: 20),
            OfferCardsP2(driverName: "",starRating: 10,offeredPrice: 20),
            OfferCardsP2(driverName: "",starRating: 10,offeredPrice: 20),

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


class OfferCardsP2 extends StatefulWidget {
  final String driverName;
  final double starRating;
  final double offeredPrice;

  OfferCardsP2({
    required this.driverName,
    required this.starRating,
    required this.offeredPrice,
  });

  @override
  _OfferCardsP2State createState() => _OfferCardsP2State();
}

class _OfferCardsP2State extends State<OfferCardsP2> {
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
                style: TextStyle(fontFamily: 'UberMove',
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
                  style: TextStyle(fontFamily: 'UberMove',
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
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.amber, fontSize: 18),
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
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextField(
                  onTap: () {},
                  style: TextStyle(fontFamily: 'UberMove',color: Colors.black),
                  decoration: InputDecoration(
                    labelText: '\$253.46',
                    labelStyle: TextStyle(fontFamily: 'UberMove',color: Color.fromRGBO(8, 131, 149, 1)),
                    filled: true,
                    fillColor: Colors.grey[400], // Background color
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
                  style: TextStyle(fontFamily: 'UberMove',
                    color: Color.fromRGBO(0, 255, 202, 1),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.red), // Add this line for the border color
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerAccepted()));
                },
                child: Row(
                  children: [
                    Icon(Icons.cancel_outlined, color: Colors.red),
                    Expanded(child: SizedBox()),
                    Text(
                      'Cancel Request',
                      style: TextStyle(
                        fontFamily: 'UberMove',
                        color: Color.fromRGBO(255, 0, 0, 1.0),
                        fontSize: 16.0,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 80.0, // Adjust width as needed
        height: 40.0, // Adjust height as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: widget.value
              ? Color.fromRGBO(8, 131, 149, 1)
              : Color.fromRGBO(202, 202, 202, 1),
        ),
        child: Row(
          mainAxisAlignment: widget.value
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 40.0,
                height: 40.0,

                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: widget.value ? Color.fromRGBO(0, 255, 202, 1) : Color.fromRGBO(232, 234, 233, 1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(

                    )
                ),
                child: Text(
                  widget.value ? 'Yes' : 'No',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
