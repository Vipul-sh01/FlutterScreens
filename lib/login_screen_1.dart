import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget {
  final Color? primaryColor;
  final Color? backgroundColor;
  final AssetImage backgroundImage;

  LoginScreen1({
    Key? key,
    this.primaryColor = Colors.green,
    this.backgroundColor = Colors.white,
    this.backgroundImage = const AssetImage("assets/images/full-bloom.png"),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: this.backgroundColor,
            image: DecorationImage(
              image: this.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 100.0, bottom: 100.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "DEMO",
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: this.primaryColor),
                        ),
                        Text(
                          "Login Screen 1",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: this.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Email",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      child: Icon(
                        Icons.lock_open,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 1.0,
                      color: Colors.grey.withOpacity(0.5),
                      margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          primary: this.primaryColor, // background color
                          onPrimary: Colors.white, // text color
                        ),
                        onPressed: () {
                          // TODO: Implement login functionality
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(child: Container()),
                            Transform.translate(
                              offset: Offset(15.0, 0.0),
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: this.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          primary: Color(0xff3B5998), // Facebook blue color
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          // TODO: Implement Facebook login functionality
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "LOGIN WITH FACEBOOK",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(child: Container()),
                            Transform.translate(
                              offset: Offset(15.0, 0.0),
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.facebook,
                                  color: Color(0xff3b5998),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: this.primaryColor,
                        ),
                        onPressed: () {
                          // TODO: Navigate to Sign Up screen
                        },
                        child: Text(
                          "DON'T HAVE AN ACCOUNT?",
                          style: TextStyle(color: this.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
