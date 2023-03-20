import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class PageConfiguration extends StatefulWidget {
  const PageConfiguration({super.key});

  @override
  State<PageConfiguration> createState() => _PageConfigurationState();
}

class _PageConfigurationState extends State<PageConfiguration> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       'Confuguração',
    //     ),
    //   ),
    //   body: Align(
    //     alignment: Alignment.topCenter,
    //     child: Container(
    //       margin: EdgeInsets.symmetric(vertical: 50),
    //       height: 120,
    //       width: 300,
    //       decoration: BoxDecoration(
    //           boxShadow: const <BoxShadow>[
    //             BoxShadow(
    //                 color: Colors.grey,
    //                 blurRadius: 10.0,
    //                 offset: Offset(0.0, 1.0))
    //           ],
    //           color: Colors.white,
    //           borderRadius: BorderRadius.only(
    //             topLeft: const Radius.circular(20.0),
    //             topRight: const Radius.circular(20.0),
    //             bottomLeft: const Radius.circular(20.0),
    //             bottomRight: const Radius.circular(20.0),
    //           )),
    //       child: Padding(
    //           padding: const EdgeInsets.all(
    //             20,
    //           ),
    //           child: Card(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.stretch,
    //               children: const [
    //                 Text(
    //                   'Mais Contratos',
    //                   style: TextStyle(
    //                     fontSize: 30,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 SizedBox(height: 8.0),
    //                 Text(
    //                   'Versão Instalada:',
    //                   style: TextStyle(
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black54,
    //                   ),

    //                 ),

    //               ],

    //             ),

    //           )),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 24,
                ),
                Card(
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                        child: Text(
                          'Mais Contratos',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
                        child: Text(
                          ('Versão Instalada'),
                        ),
                      ),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: const Size(120, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        label: const Text(
                          "Sair",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: Colors.white,
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
