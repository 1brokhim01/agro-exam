import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

meats({String? ftext,String? stext,String? ttext,String? imag,}) => Container(
  height: 96,
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colorss.grey_shade,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          szBox(h: 15),
          Text("   $ftext",style: TextStyle(fontWeight: FontWeight.bold,fontSize: FontConst.kMediumFont),),
          Text("   $stext",style: TextStyle(fontSize: FontConst.kMediumFont),),
          Text("   $ttext",style: TextStyle(fontSize: FontConst.kSmallFont),),
        
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            height: 88,
            width: 112,
            child: Image.network("$imag"),
          ),
        ],
      ),
    ],
  ),

);
