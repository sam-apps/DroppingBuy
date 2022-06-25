import 'package:droppingbuy/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  void _launchGoogleUrl() async {
    final Uri _url = Uri.parse('https://play.google.com/store/apps/details?id=com.qwqerfood.android');
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  void _launchAppStoreUrl() async {
    final Uri _url = Uri.parse('https://apps.apple.com/us/app/qwqer-food/id1545620865');
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 4752,
        width: 1920,
        child: Stack(
          children: [

            Column(
              children: [
                Container(
                  width: 1920,
                  height: 1728,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        MyColors.colorFirst,
                        MyColors.colorSecond,
                        MyColors.colorThird,
                        MyColors.colorFourth,
                        MyColors.colorFifth,
                        MyColors.colorSix,
                        MyColors.colorSeven
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.02, 0.11, 0.20, 0.27, 0.40, 0.89],
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 1440,
                          height: 1728,
                          decoration: BoxDecoration(
                              // color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 103.0, left: 103),
                            child: Column(
                              children: [
                                Stack(
                                  // fit: StackFit.expand,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 41.0, bottom: 41),
                                          // child: Image.network("assets/Logo.png"),
                                          child:
                                              Image.asset("Logo.png",  filterQuality: FilterQuality.high,),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 150),
                                      child: Text(
                                          "GROCERIES\nRIGHT TO\nYOUR DOOR!",
                                          style: TextStyle(
                                              fontSize: 70,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins",
                                              color: MyColors.colorWhite)),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 500),
                                          child: Container(
                                            width: 435,
                                            height: 435,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 41.0, bottom: 41),
                                            child: TextButton(
                                                child: Text(
                                                    "GET REWARD".toUpperCase(),
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: "Poppins",
                                                        color: MyColors
                                                            .colorButtonText)),
                                                style: ButtonStyle(
                                                    maximumSize: MaterialStateProperty.all(
                                                        const Size(200, 50)),
                                                    padding:
                                                        MaterialStateProperty.all<EdgeInsets>(
                                                            const EdgeInsets.all(
                                                                15)),
                                                    foregroundColor:
                                                        MaterialStateProperty.all<Color>(
                                                            Colors.white),
                                                    backgroundColor:
                                                        MaterialStateProperty.all<Color>(Colors.white),
                                                    shadowColor: MaterialStateProperty.all<Color>(MyColors.colorShadow),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0), side: const BorderSide(color: Colors.white)))),
                                                onPressed: () => null),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 13.0),
                                            child: Image.network(
                                                "assets/im_iphone_clay_right_02.png", filterQuality: FilterQuality.high,),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 1024,
                            maxWidth: 1440,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1920,
                  height: 785,
                  child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0),
                            child: Text(
                                "WE CURRENTLY DELIVER TO DOWNTOWN LOS ANGELES".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontFamily: "Poppins",
                                    color: MyColors
                                        .darkColor)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 13.0),
                            child: Image.network(
                              "assets/im_map.png", filterQuality: FilterQuality.high,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1920,
                  height: 1080,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        MyColors.colorSeven,
                        MyColors.colorEight,
                        MyColors.colorNine,
                        MyColors.colorTen,
                        MyColors.colorEleven,
                        MyColors.colorTwelve,
                        MyColors.colorLast
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.02, 0.11, 0.20, 0.27, 0.40, 0.89],
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 72.0),
                            child: Image.network(
                              "assets/im_free_app.png", filterQuality: FilterQuality.high,),
                          ),

                        ),
                        Container(
                          width: 448,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0),
                                child: TextButton.icon(
                                  onPressed: () {_launchAppStoreUrl();},
                                  label: Text(''),
                                  icon: Image.network(
                                    "assets/btn_app_store_white.png", filterQuality: FilterQuality.high,),
                                ),
                              ),
                              TextButton.icon(
                                onPressed: () {_launchGoogleUrl();},
                                label: Text(''),
                                icon: Image.network(
                                  "assets/btn_google_play_white.png", filterQuality: FilterQuality.high,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 1920,
                  height: 784,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 120.0),
                          child: Text(
                              "JOIN NOW AND RECEIVE".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontFamily: "Poppins",
                                  color: MyColors
                                      .darkColor)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0),
                          child: Text(
                              "\$20 SUBSCRIBE REWARD",
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontFamily: "Poppins",
                                  color: MyColors
                                      .colorButtonText)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0),
                          child: Text(
                              "TO SPEND ON YOUR NEXT PURCHASE".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontFamily: "Poppins",
                                  color: MyColors
                                      .darkColor)),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 1920,
                  height: 300,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: [
                        MyColors.colorSeven,
                        MyColors.colorEight,
                        MyColors.colorNine,
                        MyColors.colorTen,
                        MyColors.colorEleven,
                        MyColors.colorTwelve,
                        MyColors.colorLast
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.02, 0.11, 0.20, 0.27, 0.40, 0.89],
                    ),
                  ),
                  child: Center(

                  ),
                ),

                Container(
                  width: 1920,
                  height: 75,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: Text(
                          "Copyright © 2022 DroppingBuy. All rights reserved",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                              color: MyColors.darkColor)),
                    ),

                  ),
                ),

              ],
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 933.0),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 66.0),
                          child: AutoSizeText(
                            "FREE DELIVERY | NO MINIMUM ORDER | NO SUBSCRIPTION",
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 42,
                                fontFamily: "Poppins",
                                color: MyColors.colorWhite),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 121.0),
                        child: Image.asset("Promo.png", filterQuality: FilterQuality.high,),
                      ),
                    ],
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
