import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: IntrinsicHeight(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Registration',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'MQL',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Flexible(
                        child: Text(
                      '5',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow.shade800),
                    ))
                  ],
                ),
                Flexible(
                  child: Text(
                    'Join Traders Community www.mql5.com',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SourceSansPro',
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),

/*SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),*/
                Container(
                  width: size.width * 0.7,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  margin:
                      EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Flexible(
                        child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                labelText: 'Login',
                                hintText: 'enter login',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always)),
                      ),
                      Flexible(
                        child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'email',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                  child: Text(
                    'The password for your new MQL5 account will be sent to the specified email address',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Register'),
                  minWidth: 220,
                  color: Colors.amber.shade700,
                ),
                Text(
                  'or',
                  style: TextStyle(color: Colors.white),
                ),
                SignInButton(
                  Buttons.Facebook,
                  text: "Continue with Facebook",
                  onPressed: () {},
                )
              ]),
        ),
      )),
    );
  }
}
