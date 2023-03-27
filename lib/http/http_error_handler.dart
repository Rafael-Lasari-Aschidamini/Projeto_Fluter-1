class MyHttpErrorHandler {
  MyHttpErrorHandler._();

  static String handleError(Object exception) {
    String err = exception.toString();

    if (err.contains('connection abort')) {
      return 'Conexão cancelada!';
    } else if (err.contains('Connection failed')) {
      return 'Falha ao conectar!';
    } else if (err.contains('body.isEmpty')) {
      return 'Sem dados!';
    } else if (err.contains('json.decode')) {
      return 'Erro ao decodificar!';
    } else if (err.contains('refused')) {
      return 'Conexão recusada!';
    } else if (err.contains('TimeoutException')) {
      return 'Tempo limite de conexão atingido!';
    } else if (err.contains('Failed host lookup') ||
        err.contains('Network is unreachable')) {
      return 'Sem conexão com a internet!';
    }

    return 'Erro desconhecido!';
  }
}
