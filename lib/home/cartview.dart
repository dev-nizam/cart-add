import 'package:cart_add/widgets/appbar.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:customApp(context),
      body: Container(
        child: ListView.builder(
          itemCount: NAME.length,
            itemBuilder: (ctx,index){
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(Images[index]),
                ),
                title: Text(NAME[index]),
                subtitle: Text("\$" +"${Price[index]}"),
                trailing: ElevatedButton(onPressed:(){
                  setState(() {
                    cart.add({
                      "image":Images[index],
                      "name":NAME[index],
                      "Price":Price[index],
                      "qty":1
                    });
                  });
                },child: Text("add to cart")),
              ),
              Divider(
                thickness: 3,
              )
            ],
          );

        }),
      ),
    );
  }
  List  Images=[
    "https://www.collinsdictionary.com/images/full/apple_158989157.jpg",
    "https://cdn3.mydukaan.io/app/image/700x700/?url=https://projecteagle.s3.ap-south-1.amazonaws.com/images/596a0c92-ada1-4101-89ec-cefdf399a6b2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNqkRL9SpkiI40JYjL56Q4yb5gdYuJQCcTw&usqp=CAU",
  ];
  List  NAME=[
    "apple",
    "orange",
    "watermelon",
  ];
  List  Price=[
    "20",
    "50",
    "10",
  ];
}
List cart=[

];
