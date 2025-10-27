import 'package:flutter/material.dart';
import 'package:lab06/widgets/sign_in_screen.dart';

class  ResetPasswordPage extends StatelessWidget{
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                      'Email:',
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
                    Column(
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child:  ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
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
                              child: const Text("Reset Password"),
                            )
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        child: SizedBox(
                          width: double.infinity,
                          child:
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () => {
                              Navigator.pop(context)
                            },
                            child: const Text("Back"),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              );
            },
          ),
        ),
      );
  }
}

