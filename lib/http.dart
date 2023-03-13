class RotasHttp {
  RotasHttp._();

  static Map<String, dynamic> getLogin(String usuario, String senha) {
    // await Future.delayed(const Duration(seconds: 5));

    Map<String, dynamic>? mapRetorno;

    if (usuario == 'bob' && senha == '1234') {
      mapRetorno = {
        'statusCode': 200,
        'message': 'Bem vindo!',
      };
    } else {
      mapRetorno = {
        'statusCode': 400,
        'message': 'Usuário ou senha inválido',
      };
    }

    return mapRetorno;
  }

  // static Map<String, dynamic> getLogin(Map<String, dynamic> param) {
  //   // await Future.delayed(const Duration(seconds: 5));

  //   if (param['ds_login'] == 'bob' && param['ds_senha'] == '1234') {
  //     return {
  //       'statusCode': 200,
  //       'message': 'Bem vindo!',
  //     };
  //   } else {
  //     return {
  //       'statusCode': 400,
  //       'message': 'Usuário ou senha inválido',
  //     };
  //   }
  // }
}
