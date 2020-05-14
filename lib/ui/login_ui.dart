import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertask/store/login/login.dart';
import 'package:fluttertask/ui/custom_input_border.dart';
import 'package:fluttertask/utils/bubble_indication_painter.dart';
import 'package:fluttertask/utils/curve.dart';

class LoginUi extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Login login = Login();
  PageController _pageController = new PageController();
  TextEditingController loginUsername = new TextEditingController();
  TextEditingController loginPassword = new TextEditingController();
  TextEditingController signUpUsername = new TextEditingController();
  TextEditingController signUpPassword = new TextEditingController();
  TextEditingController email = new TextEditingController();
  Color left = Colors.white;
  Color right = Colors.white24;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      backgroundColor: Color(0xFF1D2236),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomPaint(
                painter: CurvePainter(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: NotificationListener<OverscrollIndicatorNotification>(
              // ignore: missing_return
              onNotification: (overScroll) {
                overScroll.disallowGlow();
              },
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height >= 775.0
                      ? MediaQuery.of(context).size.height
                      : 775.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.7,
                          child: PageView(
                            controller: _pageController,
                            onPageChanged: (i) {
                              setPage(i, context);
                            },
                            children: <Widget>[
                              _buildSignIn(context),
                              _buildSignUp(context),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: _buildMenuBar(context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xFFED5E58),
                                    fontSize: 16.0),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('assets/logo.png',
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width / 5),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
//      width: 300.0,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(
            pageController: _pageController,
            dxTarget: (MediaQuery.of(context).size.width - 140) * 0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _onSignInButtonPress(context),
                child: Observer(
                  builder: (_) => Text(
                    "Login",
                    style: TextStyle(
                      color: login.left,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => _onSignUpButtonPress(context),
                child: Observer(
                  builder: (_) => Text(
                    "Sign Up",
                    style: TextStyle(
                      color: login.right,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Observer(
                  builder: (_) => TextField(
                    controller: loginUsername,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                    decoration: CustomInputBorder.inputDecoration(
                        title: 'Username',
                        validate: login.validatedLoginUserName),
                    onChanged: (_) =>
                        login.validateLoginUserName(loginUsername),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Observer(
                    builder: (_) => TextField(
                        controller: loginPassword,
                        obscureText: true,
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                        decoration: CustomInputBorder.inputDecoration(
                            title: 'Password',
                            validate: login.validatedLoginPassword),
                        onChanged: (text) =>
                            login.validateLoginPassword(loginPassword))),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Observer(
                  builder: (_) => TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.words,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                    decoration: CustomInputBorder.inputDecoration(
                        title: 'Email', validate: login.validatedSignUpEmail),
                    onChanged: (_) => login.validateSignUpEmail(email),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Observer(
                  builder: (_) => TextField(
                    controller: signUpUsername,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                    decoration: CustomInputBorder.inputDecoration(
                        title: 'Username',
                        validate: login.validatedSignUpUserName),
                    onChanged: (_) =>
                        login.validateSignUpUserName(signUpUsername),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Observer(
                  builder: (_) => TextField(
                    controller: signUpPassword,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                    decoration: CustomInputBorder.inputDecoration(
                        title: 'Password',
                        validate: login.validatedSignUpPassword),
                    onChanged: (_) =>
                        login.validateSignUpPassword(signUpPassword),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onSignInButtonPress(BuildContext context) {
    login.validateLogin(_pageController, loginUsername, loginPassword, context);
  }

  void _onSignUpButtonPress(BuildContext context) {
    login.validateSignUp(
        _pageController, signUpUsername, signUpPassword, email, context);
  }

  void setPage(int i, BuildContext context) {
    loginUsername.clearComposing();
    login.changeCurrentPage(i, context, loginUsername, loginPassword, email,
        signUpUsername, signUpPassword);
  }
}
