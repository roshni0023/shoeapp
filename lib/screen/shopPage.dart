import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/models/cart.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context,
        builder: (context)=> AlertDialog(
          title: Text('Succes'),
          content: Text('check ypur cart'),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: const [
              Text('search',
              style: TextStyle(color: Colors.grey),),
              Icon(Icons.search,
              color: Colors.grey,),
            ],
          ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone files',
          style: TextStyle(color: Colors.grey[600]),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const[
            Text(
              'hot',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
            ),),
            Text('see all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
            ),
          ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
              itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Shoe shoe= Shoe(
                  name: "Diabetic SportsShoe",
                  price: '240',
                  description: "Buy sports shoes, slippers, clogs, sneakers, formal shoes from Nike, Sparks, Red chief, Crocs and more at Amazon.in.",
                  imagePath: "assets/image/blackshoe.png");
          return ShoeTile(
            shoe: shoe,
          );
        })),
        Padding(
          padding: const EdgeInsets.only(top: 25.0,left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
