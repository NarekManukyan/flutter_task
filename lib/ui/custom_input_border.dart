import 'package:flutter/material.dart';

class CustomInputBorder {
  static InputDecoration inputDecoration({String title, bool validate}) {
    return InputDecoration(
      labelStyle: TextStyle(
        color: Color(0xFFED5E58),
      ),
      errorText: !validate ? '*Validation Error' : null,
      labelText: title,
      enabledBorder: const OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        borderSide: const BorderSide(color: Color(0xFFED5E58),width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        borderSide: const BorderSide(color: Color(0xFFED5E58),width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        borderSide: const BorderSide(color: Colors.red,width: 2),
      ),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
        borderSide: const BorderSide(color: Color(0xFFED5E58),width: 2),
      ),
      errorStyle: TextStyle(color: Color(0xFFED5E58)),
    );
  }
}
