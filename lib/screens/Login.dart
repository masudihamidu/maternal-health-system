import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/quickalert.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<LoginForm> {
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 20),
            child: Container(
              color: Colors.white60,
              width: 355,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  const Center(
                    child: Column(
                      children: [

                        Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                  ),
                  const SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Enter username',
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),

                  SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: 'Enter Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          child: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                        activeColor: Colors.lightBlueAccent, // Set the active color
                      ),
                      const Text('Remember Me'),
                    ],
                  ),
                  // Button for sign in
                  SizedBox(
                    width: 340,
                    height: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(335, 60),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () async {
                          // Handle login failure, e.g., show an error message
                          return QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'username or password does not match');
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),

                  Container(
                    alignment: Alignment.centerRight, // Align to the left
                    child: GestureDetector(
                      onTap: () {
                        context.go('/ForgotPassword');
                      },
                      child: const SizedBox(
                        width: 340,
                        height: 50,
                        child: Text(
                          'Forgotten your password?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
