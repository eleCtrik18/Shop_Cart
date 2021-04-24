import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_cart/screens/grocery.dart';
import 'package:toast/toast.dart';

class Bakery extends StatefulWidget {
  @override
  _BakeryState createState() => _BakeryState();
}

class _BakeryState extends State<Bakery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.backward),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GroceryPage()));
          },
          color: Colors.grey,
          tooltip: 'Menu',
        ),
        actions: _buildActions(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            children: <Widget>[
              Center(child: Image.asset('assets/images/buy.jpeg')),
              _buildbody(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions() => <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.grey,
          tooltip: 'Search',
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shoppingBasket,
            size: 20,
          ),
          onPressed: () {},
          color: Colors.grey,
          tooltip: 'Cart',
        )
      ];

  Widget _buildbody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Bread'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Bread has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Beer'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Beer has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Apple'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Apple has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('WaterMelon'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show(
                  "Your Item WaterMelon has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Strawberry'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show(
                  "Your Item Strawberry has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Kiwi'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Kiwi has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.breadSlice),
            title: Text('Milk'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Milk has been Added to Cart", context);
            },
          ),
        ],
      ),
    );
  }
}
