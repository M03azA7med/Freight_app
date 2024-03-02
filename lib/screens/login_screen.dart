import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freight/screens/Reset_password.dart';
import 'package:freight/screens/register_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Column(
            children: [
              SizedBox(height: 100,),
              Center(child: Text('Login',style: TextStyle(
                fontSize: 25.0,
                color: HexColor('#4A4B4D'),
              ),)),
              SizedBox(height: 20,),
              Center(child: Text('Add your details to login',style: TextStyle(
                fontSize: 15.0,
                color: HexColor('#4A4B4D'),
              ),)),
              SizedBox(height: 28,),
              Container(
                width: 307,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){},
                  decoration: InputDecoration(
                    label: Text('Your Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                    ),
                  ),

                ),
              ),
              SizedBox(height: 28,),
              Container(
                width: 307,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (value){},
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),

                    ),
                  ),

                ),
              ),
              SizedBox(height: 28,),
              Container(
                width: 300 ,
                decoration: BoxDecoration(
                    color: HexColor('#FC6011'),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: MaterialButton(onPressed: (){
                },
                  child: Text('Login',style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => restPasswordScreen(),));}, child: Text('Forget Your Password ?',style: TextStyle(color: HexColor('#7C7D7E')),)),
              SizedBox(height: 30,),
              Text("or Loign With",style: TextStyle(color: HexColor('#7C7D7E')),),
              SizedBox(
                height: 50,
              ),
              //Bottom Facbooke login
              Container(
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: HexColor('#367FC0'),
                ),
                child: MaterialButton(
                  onPressed: () {
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset('images/facebook-letter-logo.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Sign In with Facebook',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //Bottom Google login
              Container(
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: HexColor('#DD4B39'),
                ),
                child: MaterialButton(
                  onPressed: () {
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),

                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Image.asset('images/google-plus-logo.png'),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Sign In with Google',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an Account?'),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => signUpScreen(),));
              }, child:Text('Sign Up',style: TextStyle(color: HexColor('#FC6011'),fontWeight: FontWeight.bold)))
            ],
          ),

        ],
      ),
    );
    ;
  }
}
