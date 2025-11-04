import 'package:flutter/material.dart';
import 'package:intermediate/components/shoe_tile.dart';
import 'package:intermediate/models/shoes.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key,required });

  @override
  Widget build(BuildContext context) {
    final shoesList=[
      Shoes(name: 'AirForce', description: 'Nice shoes for wedding and other\n parties which require smart clothings', price: "20.55", imagePath: 'lib/images/nike1.jpg'),
      Shoes(name: 'AirForce', description: 'Nice shoes for wedding and other \nparties which require smart clothings', price: "22.55", imagePath: 'lib/images/jordan2.jpg'),
      Shoes(name: 'AirForce', description: 'Nice shoes for wedding and other\n parties which require smart clothings', price: "21.55", imagePath: 'lib/images/shoe1.jpg'),
      Shoes(name: 'AirForce', description: 'Nice shoes for wedding and other\n parties which require smart clothings', price: "23.55", imagePath: 'lib/images/jordan1.png'),
      Shoes(name: 'AirForce', description: 'Nice shoes for wedding and other \nparties which require smart clothings', price: "25.55", imagePath: 'lib/images/airmax1.jpg'),
    ];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'search something',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          Text('Explore more hot deals that we prepare for you now!',style: TextStyle(color: Colors.grey),),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
              children: [
                Text('Hot picks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                Text('See All',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(height: 20,),
        Expanded(
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){ return ShoeTile(
            shoes: shoesList[index],
          );},
          itemCount:shoesList.length,)),

        ],
      ),
    );
  }
}
