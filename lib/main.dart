import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Fala corno'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
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
