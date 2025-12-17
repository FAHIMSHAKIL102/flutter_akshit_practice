import 'package:flutter/material.dart';

class DismissibleScreen extends StatefulWidget {
  const DismissibleScreen({super.key});

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  List<String> fruits = [
    'Apple',
    'Orange',
    'Mango',
    'Lichi',
    'Grapes',
    'Banana',
    'Waterlemon',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DismissibleScreen')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },
            key: Key(fruits[index]),
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),
            child: Card(child: ListTile(title: Text(fruits[index]))),
          );
        },
        itemCount: fruits.length,
      ),
    );
  }
}
