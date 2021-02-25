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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(children: [
          Image.asset(
            'images/login_background.png',
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
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
                                    fontSize: 17, fontFamily: 'Roboto'),
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
                                      fontSize: 17,
                                      fontFamily: 'Roboto'),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Container(
                        width: size.width * 0.25,
                        child: Image.asset('images/MQL5.png')),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      width: size.width * 0.75,
                      child: Flexible(
                        child: Text(
                          'Join Traders Community www.mql5.com',
                          style: TextStyle(
                            fontSize: size.width * 0.065,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                      width: size.width * 0.7,
                      height: size.height * 0.13,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white),
                      margin: EdgeInsets.only(
                          left: 50, right: 50, top: 20, bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Expanded(
                            child: TextField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    labelText: 'Login',
                                    labelStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Roboto'),
                                    hintText: 'enter login',
                                    hintStyle: TextStyle(
                                      color: Colors.black26,
                                      fontSize: size.width * 0.04,
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always)),
                          ),
                          Expanded(
                            child: TextField(
                                textAlign: TextAlign.right,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Roboto'),
                                    hintText: 'email',
                                    hintStyle: TextStyle(
                                        color: Colors.black26,
                                        fontSize: size.width * 0.04,
                                        textBaseline: TextBaseline.alphabetic),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 10),
                      child: Text(
                        'The password for your new MQL5 account will be sent to the specified email address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.037,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.6,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      width: size.width / 1.4,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        color: Colors.amber.shade600,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      width: size.width / 1.4,
                      height: size.height * 0.06,
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('images/fb.png'),
                              width: size.width * 0.065,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                  color: Colors.blue.shade900,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        color: Colors.blue.shade50,
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
