import 'package:flutter/material.dart';
import 'package:shop/http.dart';
import 'package:test/expect.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() => _ExpensesAppState();
}

class _ExpensesAppState extends State<ExpensesApp> {
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
  String loginAcesso = "";
  dynamic senhaAcesso = "";

  // teste() {
  //   RotasHttp.getLogin(login: loginAcesso, senha: senhaAcesso);

  //   // snackbar
  //   // alerta
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
                    children: [
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
                    child: Icon(
                      Icons.add,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Card(
                // height: 185,
                //width: 400,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(10),
                //   boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: const Offset(0, 3),
                //   ),
                // ],
                // ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: TextField(
                          onChanged: (text) {
                            loginAcesso = text;
                          },
                          //controller: loginAcesso,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: Colors.orange,
                            ),
                            labelText: 'Login',
                            hintText: 'Login',
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      const Divider(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: TextField(
                          onChanged: (text) {
                            senhaAcesso = text;
                          },
                          //controller: senhaAcesso,
                          autofocus: true,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.security,
                              color: Colors.orange,
                            ),
                            labelText: 'Senha',
                            hintText: 'Senha',
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ButtonTheme(
                height: 60.0,
                child: Container(
                  width: 500,
                  child: TextButton(
                    onPressed: () => {
                      print(loginAcesso),
                      print(senhaAcesso),
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text(
                      "Acessar",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
