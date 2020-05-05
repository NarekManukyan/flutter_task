import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login.g.dart';

class Login = _Login with _$Login;

abstract class _Login with Store {
  @observable
  String username;

  @observable
  String password;

  @observable
  String email;

  @observable
  Color left = Colors.white;

  @observable
  Color right = Colors.white24;

  @observable
  int currentPage = 0;

  @action
  bool validateLogin(String userName, String password) {
    if (userName != null && password != null) {
      bool usernameValidate = userName.length > 4 ? true : false;
      bool passwordValidate = password.length > 8 ? true : false;
      return usernameValidate && passwordValidate;
    }
    return false;
  }

  @action
  bool validateSignUp(String userName, String password, String email) {
    if (userName != null && password != null && email != null) {
      bool emailValidate = RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
          .hasMatch(userName);
      bool passwordValidate = password.length > 8 ? true : false;
      bool usernameValidate = userName.length > 4 ? true : false;
      return emailValidate && passwordValidate && usernameValidate;
    }
    return false;
  }

  @action
  void changeCurrentPage(int index) {
    currentPage = index;
    if (index == 0) {
      right = Colors.white24;
      left = Colors.white;
    } else {
      right = Colors.white;
      left = Colors.white24;
    }
  }
}
