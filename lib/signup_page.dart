import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 100, 100, 0),
            child: Image.asset('assets/logo.png', width: 150, height: 150,),
          )
          ),
        const Text('Lorem ipsum', style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "SFPRO"),),
        const Padding(padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
        child:Text("Lorem ipsum dolor sit", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 205, 204, 204), fontFamily: "SFPRO", fontStyle: FontStyle.italic))),
        Padding(padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
        child: Column(
        children: [
          SignInButton(
            buttonType: ButtonType.google,
            buttonSize: ButtonSize.large,
            onPressed: () {
              _showButtonPressDialog(context, 'Google');
            }),
            SizedBox(height: 12),
          SignInButton(
            buttonType: ButtonType.facebook,
            buttonSize: ButtonSize.large,
            onPressed: () {
              _showButtonPressDialog(context, 'Facebook');
            }),
            Padding(padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: Row(children: [
              Text("Already have an account?", style: TextStyle(color: Colors.white, fontSize: 17)),
              Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold))
            ],)
            )
        ],)
        )
      ],),
      )
    );
  }

    void _showButtonPressDialog(BuildContext context, String provider) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Align(alignment: Alignment.bottomCenter, child: Text('$provider Button Pressed!')),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 400),
    ));
  }
}