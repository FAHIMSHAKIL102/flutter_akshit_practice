import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AlertDialogScreen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showMyDialog(context);
          },
          child: Text('AlertButton'),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('This is an Alert'),
        content: SingleChildScrollView(
          child: ListBody(children: [Text('This is demo')]),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Approve'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
        ],
      );
    },
  );
}
