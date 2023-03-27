import 'package:flutter/material.dart';
import 'package:shop/componentes/aplicacao_rotas.dart';
import 'package:shop/page/page_configuration.dart';
import 'package:shop/page/page_lista_classificacao.dart';
import 'page/page_login.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: const PageLogin(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
          // color: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        fontFamily: 'Quicksend',
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        AplicacaoRotas.HOME: (ctx) => PageListaClassificacao(),
        AplicacaoRotas.DESPESAS: (ctx) => PageListaClassificacao(),
        AplicacaoRotas.IMPRESSORA: (ctx) => PageListaClassificacao(),
        AplicacaoRotas.CONFIGURACAO: (ctx) => PageConfiguration(),
        AplicacaoRotas.SAIR: (ctx) => PageLogin(),
      },
    );
  }
}
