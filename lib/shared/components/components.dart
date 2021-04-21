import 'package:flutter/material.dart';

Widget drfaultButtom(
    {@required String text,
      @required function,
      double fontSize,
      Color color = Colors.white,
      Color btncolor ,

      icon}) =>
    Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: function,
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, color: color),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(btncolor)),
        ));


void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

