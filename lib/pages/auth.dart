import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_aranyani_mobile_app/components/buttons/box_border_button.dart';
import 'package:project_aranyani_mobile_app/pages/home.dart';
import 'package:provider/provider.dart';

import '../components/authComponents/signup.dart';
import '../components/authComponents/signin.dart';
import '../theme/theme.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key, required this.signIn});

  final bool signIn;
  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordCNFController;

  late Widget _signUpComponent;
  late Widget _signInComponent;

  late bool _isSignIn;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordCNFController = TextEditingController();

    _isSignIn = widget.signIn;

    _signUpComponent = SignUpComponent(
      emailTextEditingController: _emailController,
      passwordTextEditingController: _passwordController,
      confirmPasswordTextEditingController: _passwordCNFController,
    );

    _signInComponent = SignInComponent(
      emailTextEditingController: _emailController,
      passwordTextEditingController: _passwordController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel value, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox.square(
                child: Image.asset(
                  'assets/images/logo.png',
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              // Sign In/Up Component
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    _isSignIn ? _signInComponent : _signUpComponent,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(_isSignIn ? 'New User? ' : 'Already a User? '),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  _isSignIn = !_isSignIn;
                                },
                              );
                            },
                            child: Text(
                              _isSignIn ? 'Sign Up' : 'Log In',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    BoxBorderButton(
                      title: _isSignIn ? 'Login' : 'Sign Up',
                      onPressed: () {
                        if (_isSignIn) {
                          // Log In
                          logIn();
                          log('Log In');
                        } else {
                          // Sign Up
                          signUp();
                          log('Sign Up');
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void signUp() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const MyHomePage(title: 'Aranyani');
        },
      ),
    );
  }

  void logIn() {
    Fluttertoast.showToast(
      msg: "Log In",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Theme.of(context).colorScheme.primary,
      textColor: Theme.of(context).colorScheme.onPrimary,
    );
  }
}
