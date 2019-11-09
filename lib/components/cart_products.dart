import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_in_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 85,
      "size": "S",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products_in_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_color: products_in_cart[index]['color'],
          cart_prod_name: products_in_cart[index]['name'],
          cart_prod_picture: products_in_cart[index]['picture'],
          cart_prod_price: products_in_cart[index]['price'],
          cart_prod_quantity: products_in_cart[index]['quantity'],
          cart_prod_size: products_in_cart[index]['size'],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_quantity;
  Single_cart_product({
    this.cart_prod_color,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_quantity,
    this.cart_prod_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cart_prod_name),
        leading: Image.asset(
          cart_prod_picture,
          width: 80,
          height: 80,
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text("Size:"),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Rs $cart_prod_price",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        trailing: new Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Expanded(
                child: new IconButton(
                    icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
            Expanded(
              child: new Text("$cart_prod_quantity"),
            ),
            Expanded(
                child: new IconButton(
                    icon: Icon(Icons.arrow_drop_down), onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
