import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maternal_health_system/screens/MaternalHomePage.dart';
import 'package:quickalert/quickalert.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<LoginForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 20),
            child: Container(
              color: Colors.white,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  const Center(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                        ),

                       Column(
                         children: [
                           Icon(Icons.account_circle, size: 60,),
                           Text(
                             'Ingia',
                             style: TextStyle(
                               fontSize: 23,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(15),
                  ),

                  const SizedBox(
                    width: 290,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Ingiza jina lako',
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
                    width: 290,
                    height: 45,
                    child: TextField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Ingiza nenosiri',
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
                    padding: EdgeInsets.all(13.0),
                  ),

                  // Button for sign in
                  SizedBox(
                    width: 290,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(335, 60),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,),
                          backgroundColor: Colors.green,
                        ),
                        child: const Text(
                          'Ingia',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: ()  {
                          context.go('/MaternalPage');

                          // Handle login failure, e.g., show an error message

                           QuickAlert.show(
                              context: context,
                              type: QuickAlertType.error,
                              text: 'jina la mtumiaji au nenosiri halilingani');
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
                        width: 320,
                        height: 45,
                        child: Text(
                          'Umesahau nenosiri?',
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
