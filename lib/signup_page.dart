import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Hello Newbie!',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: _name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  controller: _email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  controller: _password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  child: const Text('Create Account'),
                  onPressed: () {
                    print(_name.text);
                    print(_email.text);
                    print(_password.text);
                  },
                ),
              ),
              Row(
                children: <Widget>[
                  const Text('Already have an account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //Login screen
                      Navigator.pushNamed(context, "/Login");
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
