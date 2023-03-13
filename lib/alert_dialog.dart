import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function onPressed;

  CustomAlertDialog(
      {required this.title, required this.message, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('CANCELAR'),
        ),
        ElevatedButton(
          onPressed: onPressed(),
          child: Text('OK'),
        ),
      ],
    );
  }
}
