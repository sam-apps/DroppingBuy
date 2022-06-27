import 'package:droppingbuy/theme.dart';
import 'package:flutter/material.dart';

class SmallChild extends StatelessWidget {
  const SmallChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 1927,
          width: 468,
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
          child: Column(
            // fit: StackFit.expand,
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "GROCERIES\nRIGHT TO\nYOUR DOOR!",
                              style: TextStyle(
                                  fontSize: 52,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins",
                                  color: MyColors.colorWhite),
                            ),
                            // RichText(
                            //   text: const TextSpan(
                            //     text: "Say Hi to ",
                            //     style: TextStyle(
                            //         fontSize: 60, color: Color(0xFF8591B0)),
                            //     children: [
                            //       TextSpan(
                            //           text: "🐱",
                            //           style: TextStyle(
                            //             fontSize: 60,
                            //             fontWeight: FontWeight.bold,
                            //             // color: Colors.black54
                            //           ))
                            //     ],
                            //   ),
                            // ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 12.0, top: 20),
                            //   child: Text("LET'S FLY TO MARS"),
                            // ),
                            // const SizedBox(
                            //   height: 40,
                            // ),
                          ]))),
              Container(
                alignment: Alignment.topRight,
                child: Image.network("assets/im_iphone_clay_right.png",
                    scale: .85),
              )

            ],
          )),
    );
  }
}