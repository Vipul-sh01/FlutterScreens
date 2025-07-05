import 'package:flutter/material.dart';

class LoginScreen2 extends StatelessWidget {
  final Color? backgroundColor1;
  final Color? backgroundColor2;
  final Color? highlightColor;
  final Color? foregroundColor;
  final AssetImage? logo;

  LoginScreen2({
    Key? k,
    this.backgroundColor1 = const Color(0xFF444152),
    this.backgroundColor2 = const Color(0xFF6f6c7d),
    this.highlightColor = const Color(0xfff65aa3),
    this.foregroundColor = Colors.white,
    this.logo = const AssetImage("assets/images/full-bloom.png"),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [this.backgroundColor1!, this.backgroundColor2!],
              tileMode: TileMode.repeated,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 110.0, bottom: 50.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 128.0,
                        width: 128.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: this.foregroundColor!,
                            width: 1.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          foregroundColor: this.foregroundColor,
                          radius: 100.0,
                          child: Text(
                            "S",
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Samarth Agarwal",
                          style: TextStyle(color: this.foregroundColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              /// Email Field
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: this.foregroundColor!, width: 0.5),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Icon(
                        Icons.alternate_email,
                        color: this.foregroundColor,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'samarthagarwal@live.com',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Password Field
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: this.foregroundColor!, width: 0.5),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Icon(
                        Icons.lock_open,
                        color: this.foregroundColor,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '*********',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Login Button
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: this.highlightColor,
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Login logic
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(color: this.foregroundColor),
                  ),
                ),
              ),

              /// Forgot Password
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                  onPressed: () {
                    // TODO: Forgot password
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(color: this.foregroundColor!.withOpacity(0.5)),
                  ),
                ),
              ),

              Expanded(child: Divider(color: foregroundColor!.withOpacity(0.2))),

              /// Sign Up
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                  ),
                  onPressed: () {
                    // TODO: Navigate to registration
                  },
                  child: Text(
                    "Don't have an account? Create One",
                    style: TextStyle(color: this.foregroundColor!.withOpacity(0.5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
