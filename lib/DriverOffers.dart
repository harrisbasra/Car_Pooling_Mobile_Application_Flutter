import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'DealsPage.dart';
import 'Switch_Confirmation.dart';
import 'Wallet.dart';

class DriverCards extends StatefulWidget {
  final String driverName;
  final double starRating;
  final double offeredPrice;

  DriverCards({
    required this.driverName,
    required this.starRating,
    required this.offeredPrice,
  });

  @override
  _DriverCardsState createState() => _DriverCardsState();
}

class _DriverCardsState extends State<DriverCards> {
  bool awarded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 10),
              Text(widget.driverName),
              SizedBox(width: 10),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text(' ${widget.starRating}'),
                ],
              ),
              Expanded(child: SizedBox(width: 10)),
              GestureDetector(
                onTap: () {
                  setState(() {
                    awarded = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 1, // Border width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 2, bottom: 2),
                    child: Text(
                      awarded ? 'Awarded' : '\$${widget.offeredPrice.toStringAsFixed(2)}',
                      style: TextStyle(fontFamily: 'UberMove',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 15,),
        ],
      ),
    );
  }
}


class DriverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Price input from drivers',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Available Drivers', style: TextStyle(fontSize: 20, fontFamily: 'UberMove',color: Color.fromRGBO(10, 77, 104, 1)),),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey.shade400,
                    )
                ),
                child: Column(
                  children: [
                    DriverCards(driverName: 'John Doe', starRating: 4.5, offeredPrice: 25.0),
                    DriverCards(driverName: 'Jane Smith', starRating: 4.8, offeredPrice: 30.0),
                    DriverCards(driverName: 'Mike Johnson', starRating: 4.2, offeredPrice: 22.5),
                ],
                ),
              ),

              Expanded(child: SizedBox(height: 10,)),
              Padding(
                padding: const EdgeInsets.all(12),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
                  },
                  child: Text(
                    'Proceed',
                    style: TextStyle(fontFamily: 'UberMove',
                      color: Color.fromRGBO(0, 255, 202, 1),
                      fontSize: 16.0,
                    ),
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
