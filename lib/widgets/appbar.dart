import 'package:cart_add/home/addtocart.dart';
import 'package:cart_add/home/cartview.dart';
import 'package:flutter/material.dart';

AppBar customApp(BuildContext context) {
  return AppBar(
    actions: [
      Container(
        height: 50,width: 50,

        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddToCart()));
              },
                child: Icon(Icons.shopping_bag_rounded)),
            Positioned(
              right: MediaQuery.of(context).size.width * .03,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
                child: Text(cart.length.toString(),style: TextStyle(fontSize: 10),),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
