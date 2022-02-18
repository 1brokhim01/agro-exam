import 'package:flutter/cupertino.dart';

  SizedBox szBox({double? h,double? w}) => (
    SizedBox(
    height: h,
    width: w,
    )
  );
  containerBox({double? h,double? w,Widget? ch,Color? color,String? d}) => (
    Container(
    height: h,
    width: w,
    child: ch,
    color: color,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("$d")),
    ),
    )
  );
  