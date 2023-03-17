import 'package:flutter/material.dart';

class MarcaLogo extends StatelessWidget {
  const MarcaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'mais',
                  style: TextStyle(
                    height: 0.75,
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'contratos',
                  style: TextStyle(
                    height: 0.75,
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            right: 38.0,
            child: Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 60,
              color: Colors.white,
            ),
          ),
          const Positioned(
            right: 26.0,
            child: Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
