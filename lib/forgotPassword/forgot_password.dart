import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Text(
            'WIDGET COMPANY',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 33.0,
                fontWeight: FontWeight.bold),
          ),
          Text('Get it done right away'),
          SizedBox(height: 50.0),
          Text(
            'Reset Password',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            ('Enter the email associated with your account and we will send you and email with instruction to reset your password.'),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Email", hintText: 'Enter your email'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Continue'),
          ),
        ],
      ),
    );
  }
}
