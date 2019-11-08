import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//custom imports
import 'package:e_com_app/components/horizontal_listview.dart';
import 'package:e_com_app/components/products.dart';
import 'package:e_com_app/pages/cart.dart';
import './components/ironing.dart';

void main() {
  runApp(
   App());
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
  debugShowCheckedModeBanner: false,
  routes:{
  "/":(context)=>HomePage(),
  "/ironing":(context)=>Ironing()
  }
  );}
}




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      //image slideshow
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotColor: Colors.pinkAccent,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text('Laundro'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              }),
        ],
      ),
      //app drawer
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Abhishek Mahajan'),
              accountEmail: Text('abhishekmah98@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.pinkAccent,
              ),
            ),
            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Offers'),
                leading: Icon(
                  Icons.card_giftcard,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            Divider(
              color: Colors.teal,
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About us'),
                leading: Icon(
                  Icons.help,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Contact us'),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Logout'),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(

        children: <Widget>[
          image_carousel,


          new Padding(
            padding: const EdgeInsets.all(8.0),

            child: new Text(
              'Services:',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 360.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
