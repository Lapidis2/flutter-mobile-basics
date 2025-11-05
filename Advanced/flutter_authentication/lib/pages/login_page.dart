import 'package:flutter/material.dart';
import 'package:flutter_authentication/components/my_input_fields.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Icon(Icons.lock, size: 150),
              SizedBox(height: 20),
              Text(
                'Welcome you \'ve Missed!',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              MyInputFields(
                hintText: 'Enter email',
                prefixIcon: Icons.email,
                obscureText: false,
                controller: TextEditingController(),
              ),
                
              MyInputFields(
                hintText: 'Enter password',
                prefixIcon: Icons.lock,
                obscureText: true,
                controller: TextEditingController(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                
                  children: [
                    Text('Forgot Password?'),
                    Text('Reset', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(height: 14),
              _divider(),
                
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Image.asset('lib/images/google.png',height: 50,width: 50,),
                    SizedBox(width: 60,),
                    Image.asset('lib/images/apple.png',height: 100,width: 50,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t Have account?'),
                  Text('Register Now',style: TextStyle(color: Colors.blue),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          Expanded(child: Divider()),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Or Sign in with'),
          ),

          Expanded(child: Divider()),
        ],
      ),
    );
  }
}
