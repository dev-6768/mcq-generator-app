import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class UtilFunctions {
  static void toastMessageService(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  static void cancelMessageService() {
    Fluttertoast.cancel();
  }
}