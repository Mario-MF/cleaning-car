import 'package:cleaning/modules/home/home_screen.dart';
import 'package:cleaning/shared/colors/color.dart';
import 'package:cleaning/shared/components/components.dart';
import 'package:cleaning/shared/styles/styles.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: defaultColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('CLEAN Car',style: white20bold().copyWith(fontSize: 30),),
                    SizedBox(height: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            alignment:  Alignment.center,
                            child: Text('Now Is Easy',style: white18bold().copyWith(fontSize: 20),)),
                        Text('Book now and make your Car CLEAN',style: white18bold(),),
                        Container(
                            width: 400,
                            height: 400,
                            child: Image(image: NetworkImage('https://www.pngkey.com/png/full/124-1241106_after-the-move-cleaning-tools-and-equipment-clipart.png'))),

                      ],
                    ),
                  ],
                ),
              ),
              drfaultButtom(text: 'CONTINUE',function: (){
                navigateTo(context, HomeScreen());
              },color: Colors.white,btncolor: btnColor)
            ],
          ),
        )
      ),
    );
  }
}
