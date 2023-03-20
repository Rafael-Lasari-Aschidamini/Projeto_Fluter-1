import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shop/page/card_classificacao.dart';
import 'package:test/expect.dart';

import '../componentes/menu.dart';
import '../http.dart';

class PageListaClassificacao extends StatefulWidget {
  const PageListaClassificacao({super.key});

  @override
  State<PageListaClassificacao> createState() => _PageListaClassificacaoState();
}

class _PageListaClassificacaoState extends State<PageListaClassificacao> {
  List<Map<String, dynamic>> listaClassificacao = [];

  @override
  void initState() {
    super.initState();
    _buscarDadosAPI();
  }

  void _buscarDadosAPI() {
    Map<String, dynamic> mapRetorno = RotasHttp.getClassificacao();

    int status = mapRetorno['statusCode'];
    List<Map<String, dynamic>> listaApi = mapRetorno['lista'];

    listaClassificacao = listaApi;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Classificação',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.replay_outlined,
            ),
            onPressed: _buscarDadosAPI,
          ),
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Menu(),
      body: ListView.builder(
        itemCount: listaClassificacao.length,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        itemBuilder: (BuildContext context, int posicaoItem) {
          return CardClassificacao(
            obj: listaClassificacao[posicaoItem],
          );
        },
      ),
    );
  }
}
