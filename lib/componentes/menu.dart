import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/componentes/aplicacao_rotas.dart';

import '../page/page_configuration.dart';
import '../page/page_lista_classificacao.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  Widget _opcaoMenu(IconData icon, String label, Function()? onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
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
          _opcaoMenu(Icons.library_books_outlined, 'Classificação',
              () => Navigator.of(context).pushNamed(AplicacaoRotas.HOME)),
          _opcaoMenu(Icons.monetization_on_outlined, 'Despesas',
              () => Navigator.of(context).pushNamed(AplicacaoRotas.DESPESAS)),
          _opcaoMenu(Icons.print_outlined, 'Impressora',
              () => Navigator.of(context).pushNamed(AplicacaoRotas.IMPRESSORA)),
          _opcaoMenu(
              Icons.settings_outlined,
              'Configuração',
              () =>
                  Navigator.of(context).pushNamed(AplicacaoRotas.CONFIGURACAO)),
        ],
      ),
    );
  }
}
