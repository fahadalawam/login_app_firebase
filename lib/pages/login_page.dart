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
        child: Column(
          children: [
            TextFormField(
              onSaved: (val) {
                email = val!;
              },
            ),
            TextFormField(
              onSaved: (val) {
                pass = val!;
              },
            ),
            ElevatedButton(
              onPressed: () {
                form.currentState!.save();
              },
              child: Text('تسجيل'),
            ),
          ],
        ),
      ),
    );
  }
}
