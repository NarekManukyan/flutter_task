import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login.g.dart';

class Login = _Login with _$Login;

abstract class _Login with Store {
  @observable
  Color left = Colors.white;
  @observable
  Color right = Colors.white24;
  @observable
  int currentPage = 0;
  @observable
  bool validatedLoginUserName = false;
  @observable
  bool validatedLoginPassword = false;
  @observable
  bool validatedSignUpUserName = false;
  @observable
  bool validatedSignUpPassword = false;
  @observable
  bool validatedSignUpEmail = false;

  @action
  void validateLogin(
      PageController pageController,
      TextEditingController userName,
      TextEditingController password,
      BuildContext context) {
    if (currentPage == 0) {
      if (userName != null && password != null) {
        bool usernameValidate = userName.text.length > 4 ? true : false;
        bool passwordValidate = password.text.length > 8 ? true : false;
        if (usernameValidate && passwordValidate) {
          _showAlert("Login and Password Validated", context);
        } else {
          _showAlert(
              'Login and Password Validation Error , please fill correct login or Password ( Password length must bit a bit or exactly 8 characters )',
              context);
        }
      } else
        _showAlert(
            'Login and Password Validation Error , please fill correct login or Password ( Password length must bit a bit or exactly 8 characters )',
            context);
    } else {
      pageController.animateToPage(0,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    }
  }

  @action
  void validateSignUp(
      PageController pageController,
      TextEditingController userName,
      TextEditingController password,
      TextEditingController email,
      BuildContext context) {
    pageController.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    if (currentPage == 1) {
      if (userName != null && password != null && email != null) {
        bool emailValidate = RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(email.text);
        bool passwordValidate = password.text.length > 8 ? true : false;
        bool usernameValidate = userName.text.length > 4 ? true : false;
        if (emailValidate && passwordValidate && usernameValidate) {
          _showAlert("Login, Password and Email Validated", context);
        } else {
          _showAlert(
              'Login and Password Validation Error , please fill correct login or Password ( Password length must bit a bit or exactly 8 characters )',
              context);
        }
      } else {
        _showAlert(
            'Login and Password Validation Error , please fill correct login or Password ( Password length must bit a bit or exactly 8 characters )',
            context);
      }
    } else {
      pageController.animateToPage(1,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    }
  }

  @action
  void changeCurrentPage(
    int index,
    BuildContext context,
    TextEditingController loginUserName,
    TextEditingController loginPassword,
    TextEditingController signUpEmail,
    TextEditingController signUpUserName,
    TextEditingController signUpPassword,
  ) {
    currentPage = index;
    if (index == 0) {
      signUpEmail.clear();
      signUpEmail.clearComposing();
      signUpUserName.clear();
      signUpUserName.clearComposing();
      signUpPassword.clear();
      signUpPassword.clearComposing();
      right = Colors.white24;
      left = Colors.white;
    } else {
      loginUserName.clear();
      loginUserName.clearComposing();
      loginPassword.clear();
      loginPassword.clearComposing();
      right = Colors.white;
      left = Colors.white24;
    }
  }

  void _showAlert(String alertText, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Information"),
              content: Text(alertText),
              actions: <Widget>[
                new FlatButton(
                  child: const Text("OK"),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ));
  }

  @action
  void validateLoginUserName(TextEditingController controller) {
    print(validatedLoginUserName);
    if (controller != null) {
      validatedLoginUserName = controller.text.length > 0;
      print(validatedLoginUserName);
    }
  }

  @action
  void validateLoginPassword(TextEditingController controller) {
    if (controller != null) {
      validatedLoginPassword = controller.text.length >= 8;
    }
  }

  @action
  void validateSignUpUserName(TextEditingController controller) {
    if (controller != null) {
      validatedSignUpUserName = controller.text.length > 0;
    }
  }

  @action
  void validateSignUpPassword(TextEditingController controller) {
    if (controller != null) {
      validatedSignUpPassword = controller.text.length >= 8;
    }
  }

  @action
  void validateSignUpEmail(TextEditingController controller) {
    if (controller != null) {
      validatedSignUpEmail = RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(controller.text);
    }
  }
}
