import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: const Text(
                  'Mais Contratos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              TextField(
                onChanged: (text) {
                  loginAcesso = text;
                },
                //controller: loginAcesso,
                autofocus: true,
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.white, fontSize: 25),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintText: 'Login do usuário',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const Divider(),
              TextField(
                onChanged: (text) {
                  senhaAcesso = text;
                },
                //controller: senhaAcesso,
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.security,
                    color: Colors.white,
                  ),
                  hintText: 'Senha do usuário',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const Divider(),
              ButtonTheme(
                height: 60.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
