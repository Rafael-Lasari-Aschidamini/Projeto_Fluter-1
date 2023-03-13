import 'package:flutter/material.dart';
import 'package:shop/http.dart';
import 'package:test/expect.dart';
import 'package:flutter/material.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
  /**
   * recebe dentro de um map: ds_login e ds_senha 
   * retorno:
   *  se statusCode for 200 é sucesso, se n for é falha
   *
   * login utilizavel:
   * bob, 1234
   * 
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Quicksend',
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String loginAcesso = '';
  dynamic senhaAcesso = '';

  void exibirSnackbar() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Text Message')));
  }

  //   nackbar
  //   alerta
  // quando suceso azul
  // erro vermelho
  // isso o fundo, o texto vai ser em branco, quando usar o snackbar
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade400,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'mais',
                        style: TextStyle(
                            height: 0.75,
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'contratos',
                        style: TextStyle(
                            height: 0.75,
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    child: const Icon(
                      Icons.add,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: TextField(
                        onChanged: (text) {
                          loginAcesso = text;
                        },
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                            color: Colors.orange,
                          ),
                          label: Text(
                            'Usuário',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: TextField(
                        onChanged: (text) {
                          senhaAcesso = text;
                        },
                        autofocus: true,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.security,
                            color: Colors.orange,
                          ),
                          label: Text(
                            'Senha',
                            style: TextStyle(color: Colors.grey),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    // TextButton.icon(
                    //   onPressed: () {
                    //     print(loginAcesso);
                    //     print(senhaAcesso);
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.white,
                    //       fixedSize: const Size(120, 50),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(50))),
                    //   label: const Text(
                    //     "Entrar",
                    //     style: TextStyle(
                    //       color: Colors.orange,
                    //       fontSize: 15,
                    //       backgroundColor: Colors.white,
                    //     ),
                    //   ),
                    //   icon: const Icon(
                    //     Icons.logout_outlined,
                    //     color: Colors.orange,
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 16,
                ),
                child: ButtonTheme(
                  height: 60.0,
                  child: Container(
                    width: 500,
                    child: TextButton.icon(
                      onPressed: () {
                        // Map<String, dynamic> entrar = {
                        //   'usuario': loginAcesso,
                        //   'senha': senhaAcesso,
                        // };

                        Map<String, dynamic> mapRetorno =
                            RotasHttp.getLogin(loginAcesso, senhaAcesso);
                        int status = mapRetorno['statusCode'];
                        String testMessage = mapRetorno['message'];

                        print(status);
                        print(testMessage);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: const Size(120, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      label: const Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      icon: const Icon(
                        Icons.logout_outlined,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
