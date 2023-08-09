import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';
import 'package:test/FinishRide.dart';


class CurrentRide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 77, 104, 1),
        title: Text('Current Ride', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            SizedBox(height: 100),

          ],
        ),
      ),
      bottomNavigationBar:
      Container(
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
                },
                child: Text(
                  'Chat With Driver',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 77, 104, 1),
                    fontSize: 16.0,
                  ),
                ),
          ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                minimumSize: Size(double.infinity, 45),
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                'Cancel Ride',
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1),
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 10),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FinishRide()));
              },
              child: Text(
                'Finish Ride',
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
    );
  }
}
