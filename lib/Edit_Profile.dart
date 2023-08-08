import 'package:flutter/material.dart';


class Edit_Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 77, 104, 1),
        title: Text('Edit Profile', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: InkWell(
                onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile_View()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                  radius: 40,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'First Name',
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
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Last Name',
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
                ),
              ],
            ),

            SizedBox(height: 10.0),

            SizedBox(height: 10.0),
            TextField(
              onTap: () {},
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Phone Number',
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
            SizedBox(height: 10.0),
            TextField(
              onTap: () {},
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Email',
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
            SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      hintText: 'Gender',
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
                    items: ['Male', 'Female', 'Other']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(color: Colors.black)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                ),

                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    onTap: () {},
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Age',
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
                ),
              ],
            ),
            SizedBox(height: 10.0),
            TextField(
              onTap: () {},
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Address',
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
                suffixIcon: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              onTap: () {},
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Upload ID Card',
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
            SizedBox(height: 10.0),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'Select Car Type',
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
              items: ['Car Type A', 'Car Type B', 'Car Type C']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.black)),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
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

              },
              child: Text(
                'Save',
                style: TextStyle(
                  color: Color.fromRGBO(0, 255, 202, 1),
                  fontSize: 16.0,
                ),
              ),
            ),
        ],
        ),
      ),
    );
  }
}
