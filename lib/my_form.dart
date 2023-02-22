import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Name',
              icon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !RegExp(r'^[a-z A-z]+$').hasMatch(value)) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Email', icon: Icon(Icons.email)),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                return 'Please enter your Email';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              icon: Icon(Icons.lock),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !RegExp(r'^\d+').hasMatch(value)) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.of(context).pushNamed('/second');
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
