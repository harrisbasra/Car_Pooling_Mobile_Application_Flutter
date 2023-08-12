import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';
import 'package:test/FinishDriverJob.dart';
import 'package:test/TrackLocation.dart';

import 'Profile_View.dart';

class CustomerAccepted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Customer Accepted',
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
              Text(
                "Customer Accepted your Offer",
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Image.asset("assets/images/CustomerAccepted.png", scale: 1.5,),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '\$245',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(68, 222, 2, 1),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
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
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 45, 61, 1.0),
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
                    'Chat With Customer',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 255, 202, 1),
                      fontSize: 16.0,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FinishDriverJob()));
                  },
                  child: Text(
                    'Track Location',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 255, 202, 1),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
