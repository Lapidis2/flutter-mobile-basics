import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   int _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Text('Counter appliccation'),
             Text(_count.toString()),
    
              
               ElevatedButton(onPressed: _increment, 
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                )
               ),
               
               child: Text('Increment',style: TextStyle(color: Colors.white)
               ),),
             
             
         
        ],
            ),
      ));
  }
}
