import 'package:cleaning/modules/calender/calender_screen.dart';
import 'package:cleaning/shared/colors/color.dart';
import 'package:cleaning/shared/components/components.dart';
import 'package:cleaning/shared/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedType='initial';
  String selectedFrequency='monthly';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Plan',
          style: white18bold(),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select Cleaning',style: blue(),),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){changeCleaningType("initial");},
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*.43,
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: NetworkImage('https://www.aabbro.co/wp-content/uploads/2020/08/Car-Wash-illustration-01-01-1024x1024.png'),

                                 ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Text('Initial Cleaning',style: black16Bold(),),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.white,
                              ),

                              child: (selectedType =='initial') ? Icon(Icons.check_circle,color:defaultColor,size: 30,)
                            : Icon(Icons.check_circle,color:Colors.grey,size: 30,)
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){changeCleaningType("upkeep");},
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*.43,
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: NetworkImage('https://previews.123rf.com/images/kokandr/kokandr1409/kokandr140900056/31403016-car-interior-wash-and-clean.jpg'),

                                 ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            Text('Initial Cleaning',style: black16Bold(),),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(shape: BoxShape.circle,color:Colors.white,
                              ),

                              child: (selectedType =='upkeep') ? Icon(Icons.check_circle,color:defaultColor,size: 30,)
                            : Icon(Icons.check_circle,color:Colors.grey,size: 30,)
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Select Cleaning',style: blue()),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          changeFreq("weekly");
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: (selectedFrequency=="weekly")?BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ):BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black87)
                          ),
                          child: Center(
                            child: Text("weekly",style: black20regular().copyWith(color: (selectedFrequency=="weekly")?Colors.white:Colors.black87),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          changeFreq("monthly");
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: (selectedFrequency=="monthly")?BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ):BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black87)
                          ),
                          child: Center(
                            child: Text("Monthly",style: black20regular().copyWith(color: (selectedFrequency=="monthly")?Colors.white:Colors.black87),),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 15,),
                  Text('Selected Exstra',style: blue()),
                  SizedBox(height: 15,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      extraOrder(image:'https://lh3.googleusercontent.com/proxy/yOfSNN2jSiBj1VQnVf6fU3ZA2buJ3ek1Irebuz-FmSXCFg_ptDnPhMI3cJe45um-MrQijP4xFP95NuRAAzgmIJBiQkQUslh5wdEVLm6k0rknfxi_EEaTHnnVTa0Dx3l3L6BUIgupOpw' ,name:"Car tires" ,isSelected:true ),
                      extraOrder(image:'https://i.pinimg.com/originals/2e/22/8f/2e228f3c324fe9cfdfded25264816279.png' ,name:"Car Engine" ,isSelected:true ),
                        extraOrder(image:'https://www.sparecar.net/images/pages/seat.png' ,name:"Car Salon" ,isSelected:true ),


                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      extraOrder(image:'https://cdn.autodoc.de/uploads/custom-catalog/matd/categories/200x200/10533.png' ,name:"Car Lights " ,isSelected:true ),
                      extraOrder(image:'https://png.pngtree.com/png-clipart/20190924/original/pngtree-car-illustration-with-three-different-colors-png-image_4846997.jpg' ,name:"Three Cars" ,isSelected:true ),
                        extraOrder(image:'https://www.pngrepo.com/png/45707/512/two-cars-in-line.png' ,name:"Two Cars" ,isSelected:true ),


                    ],
                  ),
                  Expanded(child: Container()),
                  drfaultButtom(text: 'Continue',btncolor:btnColor,function: (){
                    navigateTo(context,CalenderScreen());
                  } )





                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void changeCleaningType(String type){
    selectedType=type;
    setState(() {


    });

  }
  void changeFreq(String frequency){
    selectedFrequency=frequency;
    setState(() {



    });

  }

Column extraOrder({String image, String name, bool isSelected}){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,

                  image: DecorationImage(
                  image: NetworkImage(image)
                )
              ),
            ),
            Positioned(top: 0,right: 0,child: (isSelected==true)?
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:  Colors.white
              ),
              child: Center(
                  child:Icon(
                    Icons.check,color: Colors.blue,
                  )
              ),
            ):Container()

            )

          ],
        ),
        SizedBox(height: 5,),
        Text(name,style:black16Bold() ,)
      ],
    );
}



}
