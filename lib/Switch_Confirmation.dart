import 'package:flutter/material.dart';
import 'package:test/Driver_Land_Page.dart';


class Switch_Confirm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox(height: 20)),
              Text(
                "Switch to Driver mode?",
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Expanded(child: SizedBox(height: 20)),
              Image.asset("assets/images/car1.png", scale: 1.5,),
              Expanded(child: SizedBox(height: 10,)),
              Text(
                "Select Licence Duration",
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10,),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Select Duration',
                  hintStyle: TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
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
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                items: ['1 Month', '6 Months', 'Permanent']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
              SizedBox(height: 10,),
              TextField(
                readOnly: true,
                onTap: () {},
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Upload Driving Licence',
                  hintStyle: TextStyle(color: Color.fromRGBO(8, 131, 149, 1)),
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
              Expanded(child: SizedBox(height: 10,)),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Driver_Land_Page(username: "John Doe", userID: "FS")));
                },
                child: Text(
                  'Start Driving',
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
