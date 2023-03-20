import 'package:flutter/material.dart';

class CardClassificacao extends StatelessWidget {
  final Map<String, dynamic> obj;
  final void Function()? onTap;

  const CardClassificacao({
    required this.obj,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Código: ${obj["codigo"]}',
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Vendedor: ${obj["vendedor"]}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Produto: ${obj["produto"]}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Destino: ${obj["destino"]}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  'Embarque: ${obj["embarque"]}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
