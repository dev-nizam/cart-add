import 'package:cart_add/home/cartview.dart';
import 'package:cart_add/widgets/appbar.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  AddToCart({Key? key}) : super(key: key);
  int counter = 0;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {

  String item = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customApp(context),
        body: Container(
            height: 900,
            child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(cart[index]["image"]),
                        ),
                        title: Text("NAME"),
                        subtitle: Text("Price"),
                        trailing: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                              ),
                              child: Container(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          item = index.toString();
                                          setState(() {
                                            widget.counter == 0
                                                ? print('counter at 0')
                                                : cart[index]["qty"]--;
                                          });
                                        },
                                        child: Icon(Icons.remove)),
                                    Text(cart[index]["qty"].toString()),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print('set');
                                          cart[index]["qty"]++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    cart.removeAt(index);
                                  });
                                },
                                child: Icon(Icons.delete))
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      )
                    ],
                  );
                })));
  }
}
