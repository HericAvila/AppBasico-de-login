import 'package:flutter/material.dart';

class WelComePage extends StatefulWidget {
  const WelComePage({super.key, required this.title});

  final String title;

  @override
  State<WelComePage> createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: () {

        }, icon: Icon(Icons.more_vert))],
      ),
      drawer: Drawer(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Gaveta de Pastas'),
            ),
            body: Container(
              child: ListView(
                children: [
                  ListBody(
                    children: [
                      UserAccountsDrawerHeader(

                        accountName: Text('Heric Avila'),
                        accountEmail:
                        Text('heric.emerenciano@gdllogistica.com.br'),
                        currentAccountPicture: Icon(
                          Icons.supervised_user_circle_outlined,
                          size: 70,
                        ),
                      ),
                      ListTile(
                        title: Text('Nova linha'),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
