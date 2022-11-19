import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> form = GlobalKey();

  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل مستخدم جديد'),
      ),
      body: Form(
        key: form,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                onSaved: (val) {
                  email = val!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                onSaved: (val) {
                  pass = val!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  form.currentState!.save();
                },
                child: Text('تسجيل'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
