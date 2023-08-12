import 'package:flutter/material.dart';
import 'package:test/Wallet.dart';


class FinishDriverJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Ride Finished',
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
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Image.asset("assets/images/DriverSuccess.png", scale: 1.5,),
              Expanded(child: SizedBox(height: 10,)),Text(
                "How was your experience with customer?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onTap: () {},
                maxLines: 5,
                style: TextStyle(color: Colors.black),
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
                  style: TextStyle(
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
                    Text('Text Goer', textAlign: TextAlign.center, ),
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
