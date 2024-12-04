import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/forgotPassword/forgot_second.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'WIDGET COMPANY',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 33.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(child: Text('Get it done right away')),
              SizedBox(height: 60.0),
              Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                ('Enter the email associated with your account and we will send you and email with instruction to reset your password.'),
              ),
              TextFormField(
                validator: (userKoInput) {
                  if (userKoInput == null || userKoInput.isEmpty) {
                    return "Email khali garnu hunna";
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotSecondPage(),
                      ),
                    );
                  }
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
