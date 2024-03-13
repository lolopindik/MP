import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseClient = Supabase.instance.client;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
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
                final authResponse = await supabaseClient.auth.signInWithPassword(
                  email: emailController.text,
                  password: passwordController.text,
                );
                sm.showSnackBar(SnackBar(
                    content: Text("Signed in ${authResponse.user!.email!}")));
              } catch (error) {
                sm.showSnackBar(SnackBar(
                    content: Text("Error: $error"),
                    backgroundColor: Colors.red,
                ));
              }
            },
            child: const Text("Sign In", style: TextStyle(color: Colors.blue),),
          )
        ],
      ),
    );
  }
}