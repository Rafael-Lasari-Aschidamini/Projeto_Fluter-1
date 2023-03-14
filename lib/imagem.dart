import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,

      child: const Image(
        image: AssetImage('assets/icon.png'),
        fit: BoxFit.cover,
      ),

      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/splash.png"),
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}
