import 'dart:ui';

import 'package:flutter/material.dart';

class Helper{
  static showSnackBar(String message, Color color, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 16.0),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ));
  }
}