import 'package:flutter/material.dart';

Widget defaultButton(
    {double width = double.infinity,
    double height = 40.0,
    double radius = 0.0,
    Color backGround = Colors.red,
    required String text,
    required VoidCallback function}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: backGround,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: MaterialButton(
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  );
}

void navigatorTo({required BuildContext context, required Widget screen}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
}

void navigatorAndFinish(
    {required BuildContext context, required Widget screen}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => screen));
}
