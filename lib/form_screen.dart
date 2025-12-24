import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();
  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FormScreen')),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter Firstname'),
                key: ValueKey('firstname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Fillup required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter Laststname'),
                key: ValueKey('lastname'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Fillup required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  lastname = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                key: ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Fillup required';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  email = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter Password'),
                key: ValueKey('password'),
                validator: (value) {
                  if (value.toString().length <= 5) {
                    return 'Minimum length of password should be 6';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value.toString();
                },
              ),
              TextButton(
                onPressed: () {
                  trysubmit();
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
