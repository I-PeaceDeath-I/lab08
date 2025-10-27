import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab06/widgets/sign_in_screen.dart';
class SignUpPage extends StatelessWidget{
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Builder(
              builder: (context){
                return Padding(

                    padding: const EdgeInsets.all(16.0),
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
                          Text(
                            'Username',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),

                          Text(
                            'Email',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: TextField(
                            ),
                          ),

                          Text(
                            'Password',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: TextField(
                              obscureText: true,
                            ),

                          ),
                          Column(
                            children: [
                              SizedBox(
                                  width: double.infinity,
                                  child:  ElevatedButton(
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
                                    child: const Text("Sign up",),
                                  )
                              ),
                            ],
                          ),
                          Center(
                            child: SizedBox(
                                width: double.infinity,
                                child:
                                OutlinedButton(
                                  onPressed: () => {
                                    Navigator.pop(context)
                                  },
                                  child: const Text("Back"),
                                ),
                            ),
                          ),

                        ]
                    )
                );
              }
          ),
        )
    );
  }
}