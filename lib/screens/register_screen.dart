import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_screen.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

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
                'Sign Up',
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
                'Add your details to login',
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
          //Text Input
          Container(
            width: 307,
            child: TextFormField(
              keyboardType: TextInputType.text,
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Text('Name'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          //Text Input
          Container(
            width: 307,
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              decoration: InputDecoration(
                label: Text('Mobile on'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          //Text Input
          Container(
            width: 307,
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          //Text Input
          Container(
            width: 307,
            child: TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Confirm Password'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => loginScreen(),
                    ));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I Have Account'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen(),));
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: HexColor('#FC6011'),
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ],
      ),
    );
  }
}

