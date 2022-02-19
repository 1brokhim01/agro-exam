import 'package:agro_exam/core/constants/constants.dart';
import 'package:agro_exam/widgets/card.dart';
import 'package:agro_exam/widgets/meats.dart';
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
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Kprimary.kPrimaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 17, top: 60),
                          width: 25,
                          height: 7.5,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 17,top: 10),
                          width: 25,
                          height: 7.5,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 17,top: 10),
                          width: 25,
                          height: 7.5,
                          color: Colors.white,
                        ),
                     
                      ],
                    ),
                  ),
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
                          margin: const EdgeInsets.only(top: 25, bottom: 25),
                          height: 224,
                          child: Image.asset("assets/images/image1.png"),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, '/blog_read',arguments: Texts.blog_name);
                          },
                          child: Text("Blogs",
                          style: TextStyle(fontSize: FontConst.kMediumFont),),
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
                                  child:
                                      Icon(Icons.play_circle_outline_rounded),
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
                                  child:
                                      Icon(Icons.play_circle_outline_rounded),
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
                        szBox(h: 45),
                        Row(
                          children: [
                            containerBox(
                                h: 65,
                                w: 103,
                                d: "assets/images/image6.png",
                                ch: const Center(
                                  child:
                                      Icon(Icons.play_circle_outline_rounded),
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
                        szBox(h: 47),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Products",
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                  fontSize: FontConst.kMediumFont,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        szBox(h: 15),
                        Row(
                          children: [
                            cardd(
                              imgg:
                                  "https://media.istockphoto.com/photos/two-big-pineapples-on-a-white-background-isolated-picture-id905613148?k=20&m=905613148&s=612x612&w=0&h=Wr6m5Qot6xFI7692nmJaySs8BabpkdZBrjxWtd-rhnU=",
                              tittle: "Ananas",
                              subtitle: "N450 per Pcs",
                            ),
                            cardd(
                              imgg:
                                  "https://media.istockphoto.com/photos/green-apple-picture-id178395953?k=20&m=178395953&s=612x612&w=0&h=ROPvr98cT1nKdIioDWkSIUyfijzdWBj22zg7jwReqnw=",
                              tittle: "Green Apple",
                              subtitle: "N300 per Pcs",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            cardd(
                              imgg:
                                  "https://media.istockphoto.com/photos/fresh-vine-tomotoes-on-white-background-picture-id91821871?k=20&m=91821871&s=612x612&w=0&h=rXP8lZ6kO9Gdf4mJABTaDSRJOWEexlEWupKolvZShUw=",
                              tittle: "Tomotoes",
                              subtitle: "N2000 per Kg",
                            ),
                            cardd(
                              imgg:
                                  "https://media.istockphoto.com/photos/chili-pepper-isolated-3d-rendering-picture-id1251191215?k=20&m=1251191215&s=612x612&w=0&h=1GOzeeclSaGilyLf7v0RlRCSBwu5o6V1crAnOj7COHI=",
                              tittle: "Chili Pepper",
                              subtitle: "N3000 per kg",
                            ),
                          ],
                        ),
                        szBox(h: 44),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Meats",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontConst.kMediumFont),
                            ),
                            Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontConst.kMediumFont),
                            ),
                          ],
                        ),
                        szBox(h: 10),
                        meats(
                            ftext: "Full Chicken",
                            stext: "N2400",
                            ttext: "-     2    +    |     52",
                            imag:
                                "https://media.istockphoto.com/photos/chicken-thigh-fillet-cut-into-cubes-gray-background-top-view-picture-id1196505823?k=20&m=1196505823&s=612x612&w=0&h=zRirY7spyixKFFsCn9yeGI0Czw_X6lDj1vh89nU9APo="),
                        szBox(h: 10),
                        meats(
                            ftext: "Full Meat",
                            stext: "N3600",
                            ttext: "-     4    +    |     31",
                            imag:
                                "https://media.istockphoto.com/photos/raw-grass-fed-ny-strip-steaks-picture-id1045603398?k=20&m=1045603398&s=612x612&w=0&h=zPI5Ni7hPcDbUaf3O-CL4pvhRnKppxKeiDICcXfaJ0c="),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 40,
              width: double.infinity,
              color: Colorss.grey_shade,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Kprimary.kPrimaryColor),
                  Icon(Icons.stacked_line_chart_rounded,
                      color: Kprimary.kPrimaryColor),
                  Icon(
                    Icons.cloud_queue_sharp,
                    color: Kprimary.kPrimaryColor,
                  ),
                  Icon(
                    Icons.photo_library_rounded,
                    color: Kprimary.kPrimaryColor,
                  ),
                  Icon(
                    Icons.indeterminate_check_box_rounded,
                    color: Kprimary.kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
