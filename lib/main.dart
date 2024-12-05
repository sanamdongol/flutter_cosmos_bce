import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/dashboard.dart';
import 'package:flutter_cosmos_class/forgotPassword/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome back',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text('Welcome back! Please enter your details'),
              SizedBox(height: 10.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email", hintText: 'Enter your email'),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: passController,
                decoration: InputDecoration(
                    labelText: "Password", hintText: 'Enter your password'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Remember me'),
                        value: true,
                        onChanged: (bool? value) {}),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage(),
                          ));
                    },
                    child: Text('Forgot Password'),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  print('Hello ');
                  String email = emailController.text;
                  String password = passController.text;
                  print(email + " " + password);

                  if (email.isNotEmpty && password.isNotEmpty) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ));
                  } else {
                    print("Field cannot be empty");
                  }
                },
                child: Text('Sign In'),
              ),
              SizedBox(height: 10.0),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.g_mobiledata_rounded),
                label: Text('Sign  in with Google'),
              ),
              SizedBox(height: 30.0),
              RichText(
                text: TextSpan(
                  text: "By logging in you accept our",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Terms and Conditions',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //tcBottomSheet();
                          print('termns aand conditions');
                          showTCBottomSheet();
                        },
                    ),
                    TextSpan(
                        text: ' and ', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //tcBottomSheet();
                        },
                    ),
                  ],
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Sign up',
                          style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showTCBottomSheet() {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350,
          color: Colors.redAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
