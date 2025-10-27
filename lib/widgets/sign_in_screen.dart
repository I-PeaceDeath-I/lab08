import 'package:flutter/material.dart';
import 'package:lab06/widgets/reset_password_screen.dart';
import 'package:lab06/widgets/signup_screen.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child:SizedBox(height: MediaQuery.of(context).size.height/3,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('lib/assets/flutter.jpg'),
                      ),
                    ),
                    ),
                    const Text(
                      'Name:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    const Text(
                      'Password:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                          width: double.infinity,
                          child:  OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero, // Square corners
                              ),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              ),
                            },
                            child: const Text("Sign up"),

                          )
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [ SizedBox(
                            width: MediaQuery.of(context).size.width / 2.22,
                            child:  ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero, // Square corners
                                ),
                              ),
                              onPressed: () => {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext ctx) {
                                    return const AlertDialog(
                                      title: Text('Message'),
                                      content: Text("Need to implement"),
                                    );
                                  },
                                )
                              },
                              child: const Text("Login"),
                            ),
                          ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2.22,
                                child:  OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                      side: BorderSide.none,
                                    ),
                                  ),
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ResetPasswordPage(),
                                      ),
                                    )
                                  },
                                  child: const Text("Reset password"),
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
