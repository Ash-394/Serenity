import 'package:flutter/material.dart';
import 'package:flutter_web/screens/signup.dart';
import 'package:flutter_web/screens/login.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
        color: Color.fromARGB(255, 249, 222, 208).withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width/25,),
                    Text(
                      'SERINITY',
                      style: TextStyle(
                        color: Color.fromARGB(255, 106, 40, 125),
                        fontSize: 26,
                        fontFamily: 'Itim',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(width: screenSize.width / 2),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sign up',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? Color.fromARGB(255, 106, 40, 125)
                                    : Color.fromARGB(255, 16, 10, 16),
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF051441),
                            ),
                          )
                        ],
                      ),
                    ),
                   SizedBox(width: screenSize.width / 30),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                        
                         Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );

                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                color: _isHovering[0]
                                    ? Color.fromARGB(255, 106, 40, 125)
                                    : Color.fromARGB(255, 16, 10, 16),
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Color(0xFF051441),
                            ),
                          )
                        ],
                      ),
                    ),
            
                  ],
                ),
              ),

            ],
          ),
        ),
      
    );
  }
}
