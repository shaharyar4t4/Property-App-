import 'package:flutter/material.dart';
import 'package:houserentapp/constant/colour.dart';
import 'package:houserentapp/screen/dashbored.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pay.gif',),
            Container(
              child: Text("Now You Become the Owner of this House", style: TextStyle(fontSize: 15),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashbored()));
            }, child: Text("Back to Home", style: TextStyle(fontSize: 16, color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: box),)
          ],
        ),
      ),
    );
  }
}