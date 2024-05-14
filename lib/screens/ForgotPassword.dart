import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 220, horizontal: 20),
            child: Container(
              color: Colors.white,
              width: 350,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(40),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            'Umesahau neno la siri?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(15),
                    ),

                    SizedBox(
                      width: 290,
                      height: 50,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: OutlineInputBorder(
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Barua pepe',
                          suffixIcon: Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Tafadhari ingiza barua pepe';
                          }
                          // Regular expression for email validation
                          final RegExp emailRegex =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Tafadhari ingiza barua pepe';
                          }
                          return null; // Return null if the input is valid
                        },
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(13.0),
                    ),

                    // Button for sign in
                    SizedBox(
                      width: 292,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(335, 60),
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,),
                        ),
                        child: const Text(
                          'Tuma barua pepe',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                            context.go('/');
                          }
                        },

                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(10.0),
                    ),

                    // Button for cancel
                    SizedBox(
                      width: 292,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(335, 60),
                          backgroundColor: Colors.redAccent,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,),
                        ),
                        child: const Text(
                          'Ghairi',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                            context.go('/');
                          }
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(13.0),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
