import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class restPasswordScreen extends StatelessWidget {
  const restPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 25.0,
                  color: HexColor('#4A4B4D'),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                'Please enter your email or Phone number to receive a \n  OTP Code to create a new password',
                style: TextStyle(
                  fontSize: 15.0,
                  color: HexColor('#4A4B4D'),
                ),
              )),
          SizedBox(
            height: 28,
          ),
          //Text Input
          Container(
            width: 307,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Text('Your Email'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          //Buttom
          Container(
            width: 300,
            decoration: BoxDecoration(
                color: HexColor('#FC6011'),
                borderRadius: BorderRadius.circular(20)),
            child: MaterialButton(
              onPressed: () {
              },
              child: Text(
                'send',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],

      ),
    );
  }
}
