import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freight/screens/login_screen.dart';
import 'package:freight/screens/register_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class landingScreen extends StatelessWidget {
  const landingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/landing.png"),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('F ',style:   TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color:HexColor("#FC6011"),
              ),),
              Text('D',style:   TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color:HexColor("#4A4B4D"),
              ),),
              Text(' S',style:   TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color:HexColor("#FC6011"),
              ),),

            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('fast delivery service ',style:   TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color:HexColor("#4A4B4D"),
          ),),
          SizedBox(
            height: 250.0,
          ),
          Container(
            width: 300 ,
            decoration: BoxDecoration(
                color: HexColor('#FC6011'),
                borderRadius: BorderRadius.circular(20)
            ),
            child: MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen(),));
            },
              child: Text('Login',style: TextStyle(color: Colors.white),),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: 300 ,
            height:50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: OutlinedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => signUpScreen(),));
            },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
              ),
              child: Text('Create an Account',style: TextStyle(color: HexColor('#FC6011')),),
            ),
          ),
        ],
      ),

    );
  }
}
