import 'package:flutter/material.dart';
import 'main_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = '';
  String password = '';

  bool isLogin = false;

  void CekLogin() {
    if (usernameController.text == username &&
        passwordController.text == password) {
      setState(() {
        isLogin = true;
      });
    } else {
      setState(() {
        isLogin = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 100),
          Center(
              child: Column(
            children: [
              Text(
                'Welcome to MyApp',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
          const SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  CekLogin();
                  if (isLogin == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainMenu(),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Username atau Password Salah'),
                      ),
                    );
                  }
                });
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
