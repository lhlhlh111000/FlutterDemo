import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {

  static void toast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        backgroundColor: Colors.black87,
        textColor: Colors.white,
        fontSize: 18
    );
  }
}