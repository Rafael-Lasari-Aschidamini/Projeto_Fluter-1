import 'dart:convert';
import '../page/page_login.dart';
import 'package:shop/http/http.dart';
import 'package:shop/http/http_error_handler.dart';

class MyHttpRouter {
  MyHttpRouter._();

  static Future<Map<String, dynamic>> receberUsuarioLogin(
      String usuario, senha) async {
    // String acesso = dados['usuario'];
    // String senha = dados['senha'];
    try {
      final param = {
        'a': 'login',
        'c': 'Usuario',
        'gzip': 1,
        't': 1,
        'p': {
          'parametros': {
            'senha': senha,
            'usuario': usuario,
          },
        },
      };
      //verificar se este com o login correto,
      //passando os dados passados no login

      return (await MyHttp.post('', param));
    } catch (e) {
      return {
        'status': 400,
        'dados': {
          'msg': MyHttpErrorHandler.handleError(e),
        },
      };
    }
  }

  static Future<Map<String, dynamic>> receberClassificacao(
      Map<String, dynamic> dados) async {
    // String baixaClassificacoes = dados['baixaClassificacoes'];
    // String classificacao = dados['Classificacao'];
    try {
      final param = {
        'a': 'baixaClassificacoes',
        'c': 'Classificacao',
        'gzip': 1,
        't': 1,
        'p': {
          'parametros': {
            'app': true,
          },
        },
      };

      return (await MyHttp.post('', param));
    } catch (e) {
      return {
        'status': 400,
        'dados': {
          'msg': MyHttpErrorHandler.handleError(e),
        },
      };
    }
  }
}

// static Future<Map<String, dynamic>> _defaultGetRequest(
//     String route, Map<String, dynamic> usr) async {
//   final param = {'cd_regiao_venda': usr['cd_regiao_venda']};

//   try {
//     return (await MyHttp.get(route, param, '123'));
//   } catch (e) {
//     return {
//       'status': 400,
//       'dados': {
//         'msg': MyHttpErrorHandler.handleError(e),
//       },
//     };
//   }
// }

// Future<Map<String, dynamic>> enviarListaRegistroPonto(
//   Map<String, dynamic> usr,
//   Map<String, dynamic> dados,
// ) async {
//   try {
//     final param = {
//       ...dados,
//       'cd_pessoa': usr['cd_pessoa'],
//     };

//     return (await MyHttp.post('/lista-registro-ponto', param, '123'));
//   } catch (e) {
//     return {
//       'status': 400,
//       'dados': {'msg': MyHttpErrorHandler.handleError(e)}
//     };
//   }
// }

// Future<Map<String, dynamic>> receberUsuarioTransmissao(Map<String, dynamic> usr, [String? tokenFCM]) async {
//   try {
//     final param = {
//       'cd_pessoa': usr['cd_pessoa'],
//       'ds_fcm_token': tokenFCM,
//     };

//     return (await httpGet('/usuario', param, '123'));
//   } catch (e) {
//     return {
//       'status': 400,
//       'dados': {'msg': httpHandleError(e)}
//     };
//   }
// }

// Future<Map<String, dynamic>> receberCreditos(Map<String, dynamic> usr) async {
//   return _defaultPutRequest('/creditos', usr);
// }

// Future<Map<String, dynamic>> receberVersao(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/versao', usr);
// }

// Future<Map<String, dynamic>> receberListaProduto(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-produto', usr);
// }

// Future<Map<String, dynamic>> receberListaCliente(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-cliente', usr);
// }

// Future<Map<String, dynamic>> receberHistoricoVendas(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/historico-vendas', usr);
// }

// Future<Map<String, dynamic>> receberListaPlanograma(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-planograma', usr);
// }

// Future<Map<String, dynamic>> receberListaPesquisa(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-pesquisa', usr);
// }

// Future<Map<String, dynamic>> receberListaFotoVisita(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-foto-visita', usr);
// }

// Future<Map<String, dynamic>> receberGenericos(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/genericos', usr);
// }

// Future<Map<String, dynamic>> receberListaRegistroPonto(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-registro-ponto', usr);
// }

// Future<Map<String, dynamic>> enviarListaRegistroPonto(Map<String, dynamic> usr, Map<String, dynamic> dados) async {
//   try {
//     final param = {
//       ...dados,
//       'cd_pessoa': usr['cd_pessoa'],
//     };

//     return (await httpPost('/lista-registro-ponto', param, '123'));
//   } catch (e) {
//     return {
//       'status': 400,
//       'dados': {'msg': httpHandleError(e)}
//     };
//   }
// }

// Future<Map<String, dynamic>> enviarListaVisitaCliente(Map<String, dynamic> usr, Map<String, dynamic> dados) async {
//   try {
//     final param = {
//       ...dados,
//       'cd_regiao_venda': usr['cd_regiao_venda'],
//     };

//     return (await httpPost('/lista-visita-cliente', param, '123'));
//   } catch (e) {
//     return {
//       'status': 400,
//       'dados': {'msg': httpHandleError(e)}
//     };
//   }
// }

// Future<Map<String, dynamic>> receberListaAnaliseFotoVisita(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-analise-foto-visita', usr);
// }

// Future<Map<String, dynamic>> receberListaPontoExtra(Map<String, dynamic> usr) async {
//   return _defaultGetRequest('/lista-ponto-extra', usr);
// }
