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

  //виджеты потом нужно будет вынести в отдельный класс
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'OZON',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
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
