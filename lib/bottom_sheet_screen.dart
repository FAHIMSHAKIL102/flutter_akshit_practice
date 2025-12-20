import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomSheetScree')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                    ListTile(title: Text('orange'), subtitle: Text('Fahim')),
                  ],
                );
              },
            );
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
