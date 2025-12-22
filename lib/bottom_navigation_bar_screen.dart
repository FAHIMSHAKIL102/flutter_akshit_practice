import 'package:flutter/material.dart';
import 'package:flutter_akshit_practice/alert_dialog_screen.dart';
import 'package:flutter_akshit_practice/bottom_sheet_screen.dart';
import 'package:flutter_akshit_practice/dismissible_screen.dart';
import 'package:flutter_akshit_practice/snackbar_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int selectindex = 0;
  PageController pageController = PageController();
  void ontapped(int index) {
    setState(() {
      selectindex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('BottomNavigationBar')),
      body: PageView(
        controller: pageController,
        children: [
          AlertDialogScreen(),
          BottomSheetScreen(),
          DismissibleScreen(),
          SnackbarScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Alert'),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_bottom),
            label: 'BottomSheet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: 'Dismissible',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'SnackBar'),
        ],
        currentIndex: selectindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: ontapped,
      ),
    );
  }
}
