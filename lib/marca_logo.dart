import 'package:flutter/material.dart';

class MarcaLogo extends StatelessWidget {
  const MarcaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'mais',
              style: TextStyle(
                  height: 0.75,
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'contratos',
              style: TextStyle(
                  height: 0.75,
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          child: const Icon(
            Icons.keyboard_double_arrow_right,
            size: 60,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
