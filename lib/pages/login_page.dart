import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> form = GlobalKey();

  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل الدخول '),
      ),
      body: Form(
        key: form,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('email'),
                  border: OutlineInputBorder(),
                ),
                onSaved: (val) {
                  email = val!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('password'),
                  border: OutlineInputBorder(),
                ),
                onSaved: (val) {
                  pass = val!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  form.currentState!.save();
                },
                child: Text('دخول'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
