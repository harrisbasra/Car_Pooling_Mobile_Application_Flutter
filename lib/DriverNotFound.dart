import 'package:flutter/material.dart';


class DriverNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Not Found', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox(height: 20)),

              Image.asset("assets/images/FailedToFind.png", scale: 1.5,),
              Expanded(child: SizedBox(height: 10,)),Text(
                "Sorry ! No Driver was Found :(",
                style: TextStyle(
                  color: Color.fromRGBO(10, 77, 104, 1.0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Expanded(child: SizedBox(height: 20)),
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
