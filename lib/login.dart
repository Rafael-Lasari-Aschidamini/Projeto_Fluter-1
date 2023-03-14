import 'package:flutter/material.dart';
import 'package:shop/http.dart';
import 'marca_logo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

Color laranjaMaisContratos = const Color.fromRGBO(255, 148, 76, 1.0);

class _LoginState extends State<Login> {
  String loginAcesso = '';
  dynamic senhaAcesso = '';

  bool _isTextFieldEmpty() {
    return loginAcesso.isEmpty ||
        senhaAcesso.isEmpty ||
        loginAcesso == null ||
        senhaAcesso == null;
  }

  verificacaoLogin() {
    if (loginAcesso.trim().isEmpty || senhaAcesso.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Campos em Branco'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 16),
        ),
      );
    } else {
      Map<String, dynamic> mapRetorno =
          RotasHttp.getLogin(loginAcesso, senhaAcesso);
      int status = mapRetorno['statusCode'];
      String testMessage = mapRetorno['message'];
      if (status == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blue,
            content: Text(testMessage),
            behavior: SnackBarBehavior.floating,
            margin:
                const EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 16),
            // bottom: 770 bem em cima q1uando teclaso estiver fechado, caso teclado aberto da erro pois joga pra fora da tela
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(testMessage),
            behavior: SnackBarBehavior.floating,
            margin:
                const EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 16),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: laranjaMaisContratos,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Imagem(),
                MarcaLogo(),

                const SizedBox(
                  height: 24,
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
                        onPressed: verificacaoLogin,
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
      ),
    );
  }
}
