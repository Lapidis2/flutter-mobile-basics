import "package:flutter/material.dart";
void main() {
  runApp(MaterialApp(title: 'Flutter App', home: FirstHome()));
}

class FirstHome extends StatelessWidget {
  const FirstHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Flutter app'),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
        centerTitle: true,
        
        
       ),

      body: Center(
     child: InkWell(
      onTap: () => {
        print('tappedd me')
      },
      splashColor: Colors.green,
      child: Container(
        padding:EdgeInsets.all(60),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text('Tape me',style: TextStyle(color: Colors.blue),),
      ),
     ),
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.login_rounded),
      ),
    );
  }
}
