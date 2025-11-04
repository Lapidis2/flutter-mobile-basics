import 'package:flutter/material.dart';
import 'package:intermediate/models/shoes.dart';

class ShoeTile extends StatelessWidget {
  final Shoes shoes;
  const ShoeTile({super.key, required this.shoes});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(shoes.imagePath, height: 200,)),
            SizedBox(height: 20),
         
            Text(shoes.description,
            style: TextStyle(color: Colors.grey),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
            
               Column(
         crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shoes.name),
                Text('\$${shoes.price}'),
              ],
              
            ),
            Icon(Icons.add)
            ],
            
            
           ),
           

           
          ],
        ),
    
    );
  }
}
