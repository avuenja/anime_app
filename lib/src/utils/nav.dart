import 'package:flutter/material.dart';

push(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}

pop(BuildContext context) {
  Navigator.pop(context);
}
