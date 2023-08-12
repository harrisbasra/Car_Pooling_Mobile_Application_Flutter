import 'package:flutter/material.dart';
import 'package:test/ChatPage.dart';

import 'DealsPage.dart';
import 'Switch_Confirmation.dart';


class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String username = "Jon Doe";
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Wallet',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 25, right: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        text: 'Hello',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(10, 78, 105, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' $username',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5, right: 25),
                child: Text.rich(
                  TextSpan(
                    text: 'Your Available Balance: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(10, 78, 105, 1),
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\t\t\t\t\t\t\t\t\t\$561.4',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
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
                          Text(
                            'Transfer to Bank',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          // Image.asset("assets/images/bear.png", scale: 1.8,),
                          Icon(Icons.compare_arrows_outlined, size: 20,)
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
                            'Add Money',
                            style: TextStyle(
                              color: Color.fromRGBO(10, 77, 104, 1),
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.add_box_rounded, size: 20,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Text(
                'Transactions: ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(10, 77, 104, 1),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 3,
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RideCards(driverName: 'John Doe', state: "Paid", offeredPrice: 25.0),

                      RideCards(driverName: 'Added Funds', state: "Added", offeredPrice: 30.0),
                      RideCards(driverName: 'Mike Johnson', state: "Pending", offeredPrice: 22.5),
                      RideCards(driverName: 'John Doe', state: "Paid", offeredPrice: 25.0),
                      RideCards(driverName: 'Added Funds', state: "Added", offeredPrice: 30.0),
                      RideCards(driverName: 'Mike Johnson', state: "Pending", offeredPrice: 22.5),
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
                      Icon(Icons.chat, color: Color.fromRGBO(10, 77, 104, 1),),
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
                      Icon(Icons.card_giftcard, color: Color.fromRGBO(10, 77, 104, 1),),
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
                      Icon(Icons.account_balance_wallet, color: Color.fromRGBO(10, 77, 104, 1),),
                      Text('Wallet'),
                    ],
                  ),
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


class RideCards extends StatefulWidget {
  final String driverName;
  final String state;
  final double offeredPrice;

  RideCards({
    required this.driverName,
    required this.state,
    required this.offeredPrice,
  });

  @override
  _RideCardsState createState() => _RideCardsState();
}

class _RideCardsState extends State<RideCards> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: Icon(Icons.person),
        title: Row(
          children: [
            Text(widget.driverName),
            Expanded(child: SizedBox(width: 10)),
            Text(' ${widget.state}'),
            GestureDetector(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 2, bottom: 2),
                child: Text(
                  '\$${widget.offeredPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
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