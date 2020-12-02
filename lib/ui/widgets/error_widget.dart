import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Widget errorWidget(BuildContext context, String message) {
  return Flushbar(
    backgroundColor: Colors.red.withOpacity(0.5),
    duration: Duration(seconds: 2),
    message: message ?? 'Not Found',
    flushbarPosition: FlushbarPosition.TOP,
  )..show(context);
}
