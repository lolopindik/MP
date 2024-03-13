// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          const SizedBox(height: 16.0),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () async {
              final sm = ScaffoldMessenger.of(context);
              try {
                final authResponse = await supabase.auth.signUp(
                  password: passwordController.text,
                  email: emailController.text,
                );
                sm.showSnackBar(SnackBar(
                    content: Text("Signed up ${authResponse.user!.email!}")));
              } catch (error) {
                sm.showSnackBar(SnackBar(
                    content: Text("Error: $error"),
                    backgroundColor: Colors.red,
                ));
              }
            },
            child: const Text("Sign Up", style: TextStyle(color: Colors.blue),),
          )
        ],
      ),
    );
  }
}