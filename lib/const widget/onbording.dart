import 'package:flutter/cupertino.dart';

import '../screens/onbording_screen.dart';

Widget onBoardingitems(boardingModel model)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
  [
    Expanded(
      child: Image(image: AssetImage(
          '${model.image}'
      )),
    ),
    SizedBox(height: 30,),
    Text('${model.title}',
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
    ),
    SizedBox(height: 30,),
    Text('${model.body}',
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
      ),
    ),
    SizedBox(height: 30,),
  ],
);