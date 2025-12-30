import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StackScreen')),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Container(height: 400, width: 400, color: Colors.yellow),
              Positioned(
                right: 50,
                bottom: 50,
                child: Container(height: 200, width: 200, color: Colors.red),
              ),
              Positioned(
                bottom: 25,
                left: 25,
                child: Container(height: 200, width: 200, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
