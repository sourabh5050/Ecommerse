import 'package:flutter/material.dart';

//own imports
import 'package:e_com_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(child:

            Row(
            children: <Widget>[
              Expanded(child: GestureDetector(
                onTap:()=> Navigator.pushNamed(context, '/ironing'),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                height: 170.0,
                child: Image.asset('images/products/Design.png'),
                decoration: BoxDecoration(

                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                ),
              )),

              Expanded(child:  Container(
                margin: EdgeInsets.all(10.0),
                height: 170.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: ExactAssetImage('images/products/wash.png')),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),)),
            ],
          )),

          Expanded(child: Row(
            children: <Widget>[
               Expanded(child:  Container(
                 margin: EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                 height: 170,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: ExactAssetImage('images/products/Dry.png')),

                   color: Colors.red,
                   borderRadius: BorderRadius.circular(10.0),
                 ),)),
               Expanded(child: Container(
                 margin: EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                 height: 170,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: ExactAssetImage('images/products/tailoring.png')),
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(10.0),
                 ),)),
    ],
    ),
    ),


        ],
      );
  }
}

