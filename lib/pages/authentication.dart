import 'package:flutter/material.dart';
import 'package:market_place/widgets/grid_cards_widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final supabaseClient = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: buildBottomBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                // Registration logic
                String username = _usernameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;

                // Perform Supabase registration
                final response =
                    await supabaseClient.auth.signUp(email, password);

                if (response.error == null) {
                  // Registration successful
                  // Save user data to the "Users" table
                  final user = await supabaseClient.from('Users').upsert({
                    'username': username,
                    'email': email,
                    'password': password,
                  });

                  // Your code for successful registration
                } else {
                  // Registration error
                  print('Registration error: ${response.error!.message}');
                }
              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async {
                // Login logic
                String email = _emailController.text;
                String password = _passwordController.text;

                // Perform Supabase login
                final response = await supabaseClient.auth
                    .signIn(email: email, password: password);

                if (response.error == null) {
                  // Login successful
                  // Your code for successful login
                } else {
                  // Login error
                  print('Login error: ${response.error!.message}');
                }
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
