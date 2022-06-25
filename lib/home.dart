import 'package:droppingbuy/body.dart';
import 'package:flutter/material.dart';
import 'package:droppingbuy/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;

  // scroll controller
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: <Widget>[Body()],
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 50),
        child: _showBackToTopButton == false
            ? null
            : FloatingActionButton(
                backgroundColor: MyColors.colorWhite,
                foregroundColor: MyColors.colorTwelve,
                onPressed: _scrollToTop,
                child: const Icon(Icons.arrow_upward),
              ),
      ),
    );
  }
}