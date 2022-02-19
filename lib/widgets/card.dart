import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

cardd({String? imgg,String? tittle,String? subtitle}) => Card(
      elevation: 15,
      child: containerBox(
        h: 140,
        w: 160,
        ch: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, bottom: 5),
              width: 118,
              height: 100,
              child: Image.network(
                  "$imgg"),
            ),
            Text(
              "$tittle",
              style: TextStyle(fontSize: FontConst.kSmallFont),
            ),
            Text("$subtitle",
                style: TextStyle(
                  fontSize: FontConst.kSmallFont,
                ))
          ],
        ),
      ),
    );
