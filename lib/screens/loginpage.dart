import 'package:flutter/material.dart';
import 'welcomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 100,
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type your e-mail',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type your passwords',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context,
            MaterialPageRoute(
                builder: ((context) => const WelComePage(title: 'teste'))
            )
        );
        },
        child: Icon(Icons.login),
      ),
    );
  }
}
