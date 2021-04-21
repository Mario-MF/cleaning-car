import 'package:cleaning/shared/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Container(
          height: MediaQuery.of(context).size.height,
          child: CalenderPage())),
    );
  }
}

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  CalendarController _calenderController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calenderController = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _calenderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff2277cc),elevation: 0.0,title: Text('Choose Time'),),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calenderController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.saturday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(color: Colors.white),
              leftChevronIcon: Icon(Icons.arrow_back_ios,color: Colors.white,),
              rightChevronIcon: Icon(Icons.arrow_forward_ios ,color: Colors.white,),


            ),
            calendarStyle: CalendarStyle(
              weekdayStyle: TextStyle(color: Colors.white),
              eventDayStyle: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white,


              ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('22 April 2021',style: grey14regular(),),
                 SizedBox(height: 15,),
                 defautTime(name: 'Ahmed Ali',time: '12 Pm',timeToFrom: '12-3 Pm'),
                 SizedBox(height: 15,),
                 defautTime(name: 'Nour Mohamed',time: '2 Pm',timeToFrom: '2-5 Pm'),
                 SizedBox(height: 15,),
                 defautTime(name: 'Shahen Nader',time: '4 Pm',timeToFrom: '4-7 Pm'),


               ],
             ),
            ),
          ),
        ],
      ),
    );
  }
  Widget defautTime({time,name,timeToFrom}){
    return  Row(
      children: [
        CircleAvatar(
          child: Text(time),
          radius: 30,
        ),
        SizedBox(width: 5,),
        Expanded(
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade100,

            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: blue15(),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined),
                      Text(timeToFrom),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('Rating',style: grey14regular(),),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                      Icon(Icons.star_border),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
