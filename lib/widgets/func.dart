import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

img_text({String? img,String? tex,}) {
  Row(
    children: [
      containerBox(
      h: 65, w: 103, 
      ch: Image.asset("$img")),
      szBox(w: 33),
      containerBox(
        h: 65,
        w: 196,
        ch: ListTile(
          title: Text(
            "$tex",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            Texts.blog_1,
            style: TextStyle(fontSize: FontConst.kExtraSmallFont),
          ),
        ),
      ),
    ],
  );
}
