import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body : Column (
            children: [
              _pic(),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
              _forgotPassword(context),
            ]
        ),
      ),
    );
  }

  Widget _pic() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: Image.asset(
        'assets/images/flutter-logo.png'
      ),

      );
  }
  Widget _usernameField() {
    return  Container(
      padding:EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: TextFormField(
        enabled : true,
        onChanged: (value) {
          username = value;
        },
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius:
            BorderRadius.all (Radius.circular(50.0),
            ),

          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return  Container(
      padding:EdgeInsets.symmetric(horizontal: 20, vertical:10),
      child: TextFormField(
        enabled : true,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius:
            BorderRadius.all (Radius.circular(50.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginButton (BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
      ),
    );
  }

  Widget _forgotPassword (BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: TextButton (
        onPressed: () {},
        child: const Text('Forgot Password?'),
      ),
    );
  }
}