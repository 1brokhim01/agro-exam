import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: double.infinity,
              color: Kprimary.kPrimaryColor,
            ),
            Stack(
              children: [
                Padding(
                  padding: PaddingMarginConst.kExtraLargePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(fontSize: FontConst.kExtraSmallFont),
                      ),
                      szBox(h: 6),
                      Text(Texts.news_text),
                      szBox(h: 24),
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: 25),
                        height: 224,
                        child: Image.asset("assets/images/image1.png"),
                      ),
                      Text(
                        "Blogs",
                        style: TextStyle(fontSize: FontConst.kMediumFont),
                      ),
                      szBox(h: 21),
                      Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              ch: Image.asset("assets/images/image3.jpeg")),
                          szBox(w: 33),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              title: const Text(
                                "Blog 1",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                Texts.blog_1,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                      szBox(h: 21),
                      Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              ch: Image.asset("assets/images/image1.png")),
                          szBox(w: 33),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              title: const Text(
                                "Blog 2",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                Texts.blog_1,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                      szBox(h: 21),
                      Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              ch: Image.asset("assets/images/image4.png")),
                          szBox(w: 33),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              title: const Text(
                                "Blog 3",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                Texts.blog_1,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                      szBox(h: 20),
                      containerBox(
                          h: 203,
                          w: 356,
                          ch: Image.asset("assets/images/image5.png")),
                      Text(
                        "More Videos",
                        style: TextStyle(color: Colorss.grey),
                      ),
                      szBox(h: 5),
                      Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              d: "assets/images/image6.png",
                              ch: const Center(
                                child: Icon(Icons.play_circle_outline_rounded),
                              )),
                          szBox(w: 33),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              subtitle: Text(
                                Texts.blog_1,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                      szBox(h: 45),
                      Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              d: "assets/images/image6.png",
                              ch: const Center(
                                child: Icon(Icons.play_circle_outline_rounded),
                              )),
                          szBox(w: 40),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              subtitle: Text(
                                Texts.blog_2,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                      szBox(h:45),
                       Row(
                        children: [
                          containerBox(
                              h: 65,
                              w: 103,
                              d: "assets/images/image6.png",
                              ch: const Center(
                                child: Icon(Icons.play_circle_outline_rounded),
                              )),
                          szBox(w: 40),
                          containerBox(
                            h: 65,
                            w: 196,
                            ch: ListTile(
                              subtitle: Text(
                                Texts.blog_3,
                                style: TextStyle(
                                    fontSize: FontConst.kExtraSmallFont),
                              ),
                            ),
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
