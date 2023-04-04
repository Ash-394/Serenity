import 'details.dart';
import 'signup.dart';
import 'login.dart';
import 'package:flutter_web/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      backgroundColor:Color.fromARGB(255, 242, 229, 220),
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 70),
          child: TopBarContents(_opacity)),
      body: Column(
  
        children: [
          Stack(
            children: [
              
              Container(
                  height: screenSize.height * 0.85,
                  width: screenSize.width,
                  alignment: Alignment(0.05, 0.05),
                  child: Text(
                    'Introducing you to \n\n the world of \n\npeaceful browsing',
                    style: TextStyle(
                        color: Color.fromARGB(255, 41, 25, 39),
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        fontSize: 30.0),
                  )),
              Container(
                height: screenSize.height * 0.85,
                width: screenSize.width,
                alignment: Alignment(0.01, 0.55),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  child: Text('Unlock PEACE'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color.fromARGB(255, 119, 193, 185),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                ),
              ),
              Container(
                child: SizedBox(
                  height: 512,
                  width: 450,
                  child: Image.asset(
                    "assets/images/image.jpg",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
