import 'package:flutter/material.dart';
import 'package:market_place/modules/signUp.dart';
import 'package:market_place/modules/signin.dart';


class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: _selectedIndex == 0 ? const SignUp() : const SignIn(),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(_selectedIndex == 0 ? 'Sign Up' : 'Sign In'),
    );
  }

  BottomNavigationBar buildBottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: 'Sign Up',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Sign In',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      fixedColor: Colors.blue,
    );
  }
}