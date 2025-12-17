import 'package:flutter/material.dart';
import 'package:flutter_akshit_practice/snackbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SnackbarScreen()),
                );
              },
              child: Text('SnackbarScreen'),
            ),
          ),
        ],
      ),
    );
  }
}
