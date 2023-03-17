import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test/expect.dart';

import '../http.dart';

class PageListaClassificacao extends StatefulWidget {
  const PageListaClassificacao({super.key});

  @override
  State<PageListaClassificacao> createState() => _PageListaClassificacaoState();
}

class _PageListaClassificacaoState extends State<PageListaClassificacao> {
  List<Map<String, dynamic>> listaClassificacao = [];

  onTapItem() {}

  verificacaoList() {}

  // abrir apos login ()
  // listar listaClassificacao
  // exibir dados igual app original mas sem estilizar ainda

  // add 2 button icones na appbar: reload e lupa
  // adicionar um card em volta dos itens da listagem
  // criar staless widget pra esse "item"

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> mapRetorno = RotasHttp.getClassificacao();
    int status = mapRetorno['statusCode'];
    List listaApi = mapRetorno['lista'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classificação'),
      ),
      body: ListView.builder(
        itemCount: listaApi.length,
        itemBuilder: (BuildContext context, int posicaoItem) {
          return GestureDetector(
            onTap: () {
              print('Código: ${listaApi[posicaoItem]['codigo']}');
            },
            child: Container(
              height: 120,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'Código: ${listaApi[posicaoItem]['codigo']}',
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vendedor: ${listaApi[posicaoItem]['vendedor']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Produto: ${listaApi[posicaoItem]['produto']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Destino: ${listaApi[posicaoItem]['destino']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Embarque: ${listaApi[posicaoItem]['embarque']}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
