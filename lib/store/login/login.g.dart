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
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_Login.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_Login.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$leftAtom = Atom(name: '_Login.left');

  @override
  Color get left {
    _$leftAtom.context.enforceReadPolicy(_$leftAtom);
    _$leftAtom.reportObserved();
    return super.left;
  }

  @override
  set left(Color value) {
    _$leftAtom.context.conditionallyRunInAction(() {
      super.left = value;
      _$leftAtom.reportChanged();
    }, _$leftAtom, name: '${_$leftAtom.name}_set');
  }

  final _$rightAtom = Atom(name: '_Login.right');

  @override
  Color get right {
    _$rightAtom.context.enforceReadPolicy(_$rightAtom);
    _$rightAtom.reportObserved();
    return super.right;
  }

  @override
  set right(Color value) {
    _$rightAtom.context.conditionallyRunInAction(() {
      super.right = value;
      _$rightAtom.reportChanged();
    }, _$rightAtom, name: '${_$rightAtom.name}_set');
  }

  final _$currentPageAtom = Atom(name: '_Login.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.context.enforceReadPolicy(_$currentPageAtom);
    _$currentPageAtom.reportObserved();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.context.conditionallyRunInAction(() {
      super.currentPage = value;
      _$currentPageAtom.reportChanged();
    }, _$currentPageAtom, name: '${_$currentPageAtom.name}_set');
  }

  final _$_LoginActionController = ActionController(name: '_Login');

  @override
  bool validateLogin(String userName, String password) {
    final _$actionInfo = _$_LoginActionController.startAction();
    try {
      return super.validateLogin(userName, password);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validateSignUp(String userName, String password, String email) {
    final _$actionInfo = _$_LoginActionController.startAction();
    try {
      return super.validateSignUp(userName, password, email);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentPage(int index) {
    final _$actionInfo = _$_LoginActionController.startAction();
    try {
      return super.changeCurrentPage(index);
    } finally {
      _$_LoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'username: ${username.toString()},password: ${password.toString()},email: ${email.toString()},left: ${left.toString()},right: ${right.toString()},currentPage: ${currentPage.toString()}';
    return '{$string}';
  }
}
