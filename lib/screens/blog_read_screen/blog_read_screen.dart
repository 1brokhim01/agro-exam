import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Blog_read_screen extends StatefulWidget {
  const Blog_read_screen({Key? key}) : super(key: key);

  @override
  _Blog_read_screenState createState() => _Blog_read_screenState();
}

class _Blog_read_screenState extends State<Blog_read_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Texts.blog_name),
        toolbarHeight: 45,
        backgroundColor: Kprimary.kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: PaddingMarginConst.kExtraLargePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Expert suggestions for farmers from Northern Nepal",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontConst.kMediumFont),
              ),
              szBox(h: 10),
              const Text(
                "Posted on Jan 10",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              szBox(h: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  containerBox(
                    h: 173,
                    w: double.infinity,
                    ch: Image.asset("assets/images/image7.png"),
                  ),
                  szBox(h: 30),
                  Text(Texts.more_videos1),
                  Text(Texts.more_videos1),
                  szBox(h: 20),
                  Text(Texts.more_videos2),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  szBox(h: 20),
                  containerBox(
                    h: 143,
                    w: 255,
                    ch: Image.asset("assets/images/image8.png"),
                  ),
                  szBox(h: 15),
                  Text(Texts.blog_2),
                  Text(Texts.blog_2),
                  Text(Texts.blog_2),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  szBox(h: 20),
                  containerBox(
                    h: 148,
                    w: 246,
                    ch: Image.asset("assets/images/image8.png"),
                  ),
                  szBox(h: 20),
                  Text(Texts.blog_3),
                  Text(Texts.blog_3),
                  Text(Texts.blog_3),
                ],
              ),
              szBox(h: 40),
              Container(
                child: Image.asset("assets/images/splash_screen.png"),
              ),
              szBox(h: 40),
              Center(child: Text("This is our farm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),))
            ],
          ),
        ),
      ),
    );
  }
}
