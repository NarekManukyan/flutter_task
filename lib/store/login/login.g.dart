// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login on _Login, Store {
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

  final _$validatedLoginUserNameAtom =
      Atom(name: '_Login.validatedLoginUserName');

  @override
  bool get validatedLoginUserName {
    _$validatedLoginUserNameAtom.reportRead();
    return super.validatedLoginUserName;
  }

  @override
  set validatedLoginUserName(bool value) {
    _$validatedLoginUserNameAtom
        .reportWrite(value, super.validatedLoginUserName, () {
      super.validatedLoginUserName = value;
    });
  }

  final _$validatedLoginPasswordAtom =
      Atom(name: '_Login.validatedLoginPassword');

  @override
  bool get validatedLoginPassword {
    _$validatedLoginPasswordAtom.reportRead();
    return super.validatedLoginPassword;
  }

  @override
  set validatedLoginPassword(bool value) {
    _$validatedLoginPasswordAtom
        .reportWrite(value, super.validatedLoginPassword, () {
      super.validatedLoginPassword = value;
    });
  }

  final _$validatedSignUpUserNameAtom =
      Atom(name: '_Login.validatedSignUpUserName');

  @override
  bool get validatedSignUpUserName {
    _$validatedSignUpUserNameAtom.reportRead();
    return super.validatedSignUpUserName;
  }

  @override
  set validatedSignUpUserName(bool value) {
    _$validatedSignUpUserNameAtom
        .reportWrite(value, super.validatedSignUpUserName, () {
      super.validatedSignUpUserName = value;
    });
  }

  final _$validatedSignUpPasswordAtom =
      Atom(name: '_Login.validatedSignUpPassword');

  @override
  bool get validatedSignUpPassword {
    _$validatedSignUpPasswordAtom.reportRead();
    return super.validatedSignUpPassword;
  }

  @override
  set validatedSignUpPassword(bool value) {
    _$validatedSignUpPasswordAtom
        .reportWrite(value, super.validatedSignUpPassword, () {
      super.validatedSignUpPassword = value;
    });
  }

  final _$validatedSignUpEmailAtom = Atom(name: '_Login.validatedSignUpEmail');

  @override
  bool get validatedSignUpEmail {
    _$validatedSignUpEmailAtom.reportRead();
    return super.validatedSignUpEmail;
  }

  @override
  set validatedSignUpEmail(bool value) {
    _$validatedSignUpEmailAtom.reportWrite(value, super.validatedSignUpEmail,
        () {
      super.validatedSignUpEmail = value;
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
  void changeCurrentPage(
      int index,
      BuildContext context,
      TextEditingController loginUserName,
      TextEditingController loginPassword,
      TextEditingController signUpEmail,
      TextEditingController signUpUserName,
      TextEditingController signUpPassword) {
    final _$actionInfo =
        _$_LoginActionController.startAction(name: '_Login.changeCurrentPage');
    try {
      return super.changeCurrentPage(index, context, loginUserName,
          loginPassword, signUpEmail, signUpUserName, signUpPassword);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateLoginUserName(TextEditingController controller) {
    final _$actionInfo = _$_LoginActionController.startAction(
        name: '_Login.validateLoginUserName');
    try {
      return super.validateLoginUserName(controller);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateLoginPassword(TextEditingController controller) {
    final _$actionInfo = _$_LoginActionController.startAction(
        name: '_Login.validateLoginPassword');
    try {
      return super.validateLoginPassword(controller);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSignUpUserName(TextEditingController controller) {
    final _$actionInfo = _$_LoginActionController.startAction(
        name: '_Login.validateSignUpUserName');
    try {
      return super.validateSignUpUserName(controller);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSignUpPassword(TextEditingController controller) {
    final _$actionInfo = _$_LoginActionController.startAction(
        name: '_Login.validateSignUpPassword');
    try {
      return super.validateSignUpPassword(controller);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSignUpEmail(TextEditingController controller) {
    final _$actionInfo = _$_LoginActionController.startAction(
        name: '_Login.validateSignUpEmail');
    try {
      return super.validateSignUpEmail(controller);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
left: ${left},
right: ${right},
currentPage: ${currentPage},
validatedLoginUserName: ${validatedLoginUserName},
validatedLoginPassword: ${validatedLoginPassword},
validatedSignUpUserName: ${validatedSignUpUserName},
validatedSignUpPassword: ${validatedSignUpPassword},
validatedSignUpEmail: ${validatedSignUpEmail}
    ''';
  }
}
