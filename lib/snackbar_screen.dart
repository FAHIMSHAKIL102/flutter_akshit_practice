import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SnackbarScreen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              backgroundColor: Colors.grey,
              duration: Duration(seconds: 1),
              behavior: SnackBarBehavior.floating,
              //action: SnackBarAction(label: 'Undo', onPressed: () {}),
              content: Text('Now See SnackBar', style: TextStyle(fontSize: 12)),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
