import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/componentes/aplicacao_rotas.dart';

import '../page/page_configuration.dart';
import '../page/page_lista_classificacao.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  Widget opcaoMenu(IconData icon, String label, {Function()? onPressed}) {
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Row(
    //     children: [
    //       Icon(
    //         icon,
    //       ),
    //       SizedBox(
    //         width: 16,
    //       ),
    //       Text(
    //         label,
    //         style: TextStyle(
    //           fontSize: 16,
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 15,
        ),
      ),
      onTap: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Mais Contratos',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          opcaoMenu(Icons.library_books_outlined, 'Classificação',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AplicacaoRotas.HOME)),
          opcaoMenu(Icons.monetization_on_outlined, 'Despesas',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AplicacaoRotas.DESPESAS)),
          opcaoMenu(Icons.print_outlined, 'Impressora',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AplicacaoRotas.IMPRESSORA)),
          opcaoMenu(Icons.settings_outlined, 'Configuração',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AplicacaoRotas.CONFIGURACAO)),
        ],
      ),
    );
  }
}
