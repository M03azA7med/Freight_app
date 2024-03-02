import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freight/screens/landingLogin_screen.dart';
import 'package:freight/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../const widget/onbording.dart';
class boardingModel
{
  final String image;
  final String title;
  final String body;

  boardingModel({
    required this.image,
    required this.title,
    required this.body,
  });


}
class onbordingScreens extends StatefulWidget {
  const onbordingScreens({super.key});

  @override
  State<onbordingScreens> createState() => _onbordingScreensState();
}

class _onbordingScreensState extends State<onbordingScreens> {
  List<boardingModel> boarding=
  [
    boardingModel(
      image:'images/onbording.png',
      body: 'Fast  delivery to your home, office   ',
      title: 'Fast Delivery',
    ),
    boardingModel(
      image:'images/onbordin2.png',
      body: 'Real time tracking of your Freight on the app once you placed the order',
      title: 'Live Tracking',
    ),


  ];
  var boardingController=PageController();
  bool islast=false;
  void submit() {
    if(islast) {
     Navigator.push(context, MaterialPageRoute(builder: (context) => landingScreen(),));
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context,index) => onBoardingitems(boarding[index]),
                itemCount: 2,
                controller: boardingController,
                onPageChanged: (int index){
                  if(index==boarding.length-1)
                  {
                    setState(() {
                      islast=true;
                    });
                  }else
                  {
                    setState(() {
                      islast=false;
                    });
                  }
                },

              ),
            ),
            Row(
              children: [
                SmoothPageIndicator(controller: boardingController, count: boarding.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.deepOrange,
                    expansionFactor: 4,
                    spacing: 5.0,

                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange,

                  ),
                  child: MaterialButton(
                    onPressed: (){
                    if(islast)
                    {
                      submit();
                    }else{
                      boardingController.nextPage(
                          duration: Duration(
                            milliseconds: 750,
                          )
                          , curve: Curves.fastLinearToSlowEaseIn
                      );
                    }

                  },
                  child: Text('Next'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
