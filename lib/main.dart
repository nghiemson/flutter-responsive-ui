import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Image.asset(
            'images/login_background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Roboto'),
                              ),
                              textColor: Colors.white,
                              padding: EdgeInsets.all(0),
                            ),
                          ),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Registration',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Roboto'),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 115),
                        child: Image.asset('images/MQL5.png')),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Join Traders Community www.mql5.com',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      margin: EdgeInsets.only(
                          bottom: 20, top: 20, left: 50, right: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hintText: "enter login",
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black54,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "Email",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hintText: "email",
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                      child: Text(
                        'The password for your new MQL5 account will be sent to the specified email address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          letterSpacing: 01,
                          fontFamily: 'Roboto',
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: FlatButton(
                        minWidth: double.infinity,
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        color: Colors.amber.shade500,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/fb.png',
                              scale: 25,
                            ),
                            Text(
                              '  Continue with Facebook',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ]),
            ),
          )),
        ]),
      ),
    );
  }
}
