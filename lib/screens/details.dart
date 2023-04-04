import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/top_bar_contents.dart';
class Details extends StatelessWidget {

  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

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
      body:  Column(
       children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Our Key Features',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 41, 25, 39),
                fontSize: 24,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Customise your triggers and fears'),
            tileColor:  Color.fromARGB(255, 119, 193, 185),
            contentPadding:  const EdgeInsets.all(25.0),
            
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text(' Customise actions to be taken in case of emergency/panic attacks'),
            tileColor:  Color.fromARGB(255, 119, 193, 185),
            contentPadding:  const EdgeInsets.all(25.0),
            
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text('Activities to improve mental health - daily journal prompts'),
            tileColor:  Color.fromARGB(255, 119, 193, 185),
            contentPadding:  const EdgeInsets.all(25.0),
          ),
          
          
        ],
      ),
      
    );
  }
}




