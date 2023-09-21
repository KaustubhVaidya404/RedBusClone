import 'package:flutter/material.dart';
import 'package:redbusclone/ui/accountPage.dart';
import 'package:redbusclone/ui/bookingPage.dart';
import 'package:redbusclone/ui/home.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  int _currentIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const HomePage();
      case 1:
        return const BookingPage();
      case 2:
        return const AccountPage();

      default:
        return const Text("Error");
    }
  }

  List<String> titleList = ["Home", "Bookings", "My Account"];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Bookings',
            icon: Icon(Icons.checklist),
          ),
          BottomNavigationBarItem(
            label: 'My Account',
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: _getDrawerItemWidget(_currentIndex),
    );
  }
}

