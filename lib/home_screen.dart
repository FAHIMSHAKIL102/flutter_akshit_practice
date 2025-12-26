import 'package:flutter/material.dart';
import 'package:flutter_akshit_practice/alert_dialog_screen.dart';
import 'package:flutter_akshit_practice/animated_text_screen.dart';
import 'package:flutter_akshit_practice/bottom_navigation_bar_screen.dart';
import 'package:flutter_akshit_practice/bottom_sheet_screen.dart';
import 'package:flutter_akshit_practice/cached_network_image_screen.dart';
import 'package:flutter_akshit_practice/dismissible_screen.dart';
import 'package:flutter_akshit_practice/drawer_widget_screen.dart';
import 'package:flutter_akshit_practice/drop_down_screen.dart';
import 'package:flutter_akshit_practice/form_screen.dart';
import 'package:flutter_akshit_practice/snackbar_screen.dart';
import 'package:flutter_akshit_practice/stack_screen.dart';
import 'package:flutter_akshit_practice/tabBar_screen.dart';

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
              child: Text('SnackbarScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DismissibleScreen()),
                );
              },
              child: Text('DismissibleScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrawerWidgetScreen()),
                );
              },
              child: Text('DrawerWidgetScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CachedNetworkImageScreen(),
                  ),
                );
              },
              child: Text(
                'CachedNetworkImageScreen',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlertDialogScreen()),
                );
              },
              child: Text('AlertDialogScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomSheetScreen()),
                );
              },
              child: Text('BottomSheetScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnimatedTextScreen()),
                );
              },
              child: Text('AnimatedTextScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigationBarScreen(),
                  ),
                );
              },
              child: Text(
                'BottomNavigationBarScreen',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DropDownScreen()),
                );
              },
              child: Text('DropDownScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormScreen()),
                );
              },
              child: Text('FormScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackScreen()),
                );
              },
              child: Text('StackScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabbarScreen()),
                );
              },
              child: Text('TabbarScreen', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
