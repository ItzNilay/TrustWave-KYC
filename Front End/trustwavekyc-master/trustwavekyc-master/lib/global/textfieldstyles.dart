import 'package:flutter/material.dart';

class TextfieldStyles {
  static final InputDecoration fillerDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black.withAlpha(150),
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(26),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black.withAlpha(150),
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(26),
    ),
  );
}
