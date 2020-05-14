// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login on _Login, Store {
  final _$usernameAtom = Atom(name: '_Login.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: '_Login.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$emailAtom = Atom(name: '_Login.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$leftAtom = Atom(name: '_Login.left');

  @override
  Color get left {
    _$leftAtom.reportRead();
    return super.left;
  }

  @override
  set left(Color value) {
    _$leftAtom.reportWrite(value, super.left, () {
      super.left = value;
    });
  }

  final _$rightAtom = Atom(name: '_Login.right');

  @override
  Color get right {
    _$rightAtom.reportRead();
    return super.right;
  }

  @override
  set right(Color value) {
    _$rightAtom.reportWrite(value, super.right, () {
      super.right = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_Login.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$_LoginActionController = ActionController(name: '_Login');

  @override
  void validateLogin(
      PageController pageController,
      TextEditingController userName,
      TextEditingController password,
      BuildContext context) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.validateLogin');
    try {
      return super.validateLogin(pageController, userName, password, context);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSignUp(
      PageController pageController,
      TextEditingController userName,
      TextEditingController password,
      TextEditingController email,
      BuildContext context) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.validateSignUp');
    try {
      return super
          .validateSignUp(pageController, userName, password, email, context);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentPage(int index, BuildContext context) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.changeCurrentPage');
    try {
      return super.changeCurrentPage(index, context);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
password: ${password},
email: ${email},
left: ${left},
right: ${right},
currentPage: ${currentPage}
    ''';
  }
}
