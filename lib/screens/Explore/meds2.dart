import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_cart/screens/meds.dart';
import 'package:toast/toast.dart';

class Meds2 extends StatefulWidget {
  @override
  _Meds2State createState() => _Meds2State();
}

class _Meds2State extends State<Meds2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.backward),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MedsPage()));
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
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Combiflam'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Combiflam has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Syrup'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Syrup has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Mask'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Mask has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Paracetamol'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show(
                  "Your Item Paracetamol has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Painkiller'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show(
                  "Your Item Painkiller has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Oximeter'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Oximeter has been Added to Cart", context);
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.medkit),
            title: Text('Torex'),
            subtitle: Text('Add to Cart'),
            onTap: () {
              Toast.show("Your Item Torex has been Added to Cart", context);
            },
          ),
        ],
      ),
    );
  }
}
