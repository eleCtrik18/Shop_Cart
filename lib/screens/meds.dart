import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_cart/screens/Explore/meds2.dart';
import 'package:shop_cart/screens/cart.dart';

import 'package:shop_cart/screens/home.dart';
import 'package:shop_cart/utility/categories_tile.dart';
import 'package:shop_cart/utility/top_product_tile.dart';

class MedsPage extends StatefulWidget {
  @override
  _MedsPageState createState() => _MedsPageState();
}

class _MedsPageState extends State<MedsPage> {
  int selectedOptionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.home),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          color: Colors.grey,
          tooltip: 'Menu',
        ),
        actions: _buildActions(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Center(child: Image.asset('assets/images/medsbanner.jpeg')),
              _buildCategories(),
              _buildTopProducts(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  List<Widget> _buildActions() => <Widget>[
        IconButton(
          icon: Icon(
            FontAwesomeIcons.shoppingBasket,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
          color: Colors.grey,
          tooltip: 'Cart',
        )
      ];

  Widget _buildCategories() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                _ExploreAllButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Meds2()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildCategoriesList()
        ],
      ),
    );
  }

  Widget _buildCategoriesList() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CategoriesTile(
          assetPath: 'assets/images/medsone.png',
          color: Color(0xffFCE8A8),
          title: 'Painkillers',
        ),
        CategoriesTile(
          assetPath: 'assets/images/syrup.png',
          color: Color(0xffDFECF8),
          title: 'Syrups',
        ),
        CategoriesTile(
          assetPath: 'assets/images/mask.png',
          color: Color(0xffE2F3C2),
          title: 'Masks',
        ),
        CategoriesTile(
          assetPath: 'assets/images/injection.png',
          color: Color(0xffFFDBC5),
          title: 'Injections',
        ),
      ],
    );
  }

  Widget _buildTopProducts() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Products',
                  style: GoogleFonts.varelaRound(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //_ExploreAllButton(
                //onTap: () {},
                //),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildTopProductsList()
        ],
      ),
    );
  }

  Widget _buildTopProductsList() {
    List topProductList = [
      TopProductTile(
        assetPath: 'assets/images/mask.png',
        color: Color(0xffDFECF8),
        price: '\Rs 50',
        title: 'Surgical Mask',
      ),
      TopProductTile(
        color: Color(0xffFFFFFF),
        assetPath: 'assets/images/torex.jpeg',
        title: 'Torex Syrup',
        price: '\Rs 150',
      ),
      TopProductTile(
        color: Color(0xffFFF2C5),
        assetPath: 'assets/images/medp.png',
        title: 'Combiflam Tablet',
        price: 'Rs 350',
      ),
      // TopProductTile(
      //   color: Color(0xffebbcbf),
      //   assetPath: 'assets/images/milk.png',
      //   title: 'Milk',
      //   price: 'Rs 100',
      // ),
    ];

    return Column(
      children: <Widget>[
        Container(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => topProductList[index],
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemCount: topProductList.length,
          ),
        )
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    List<String> bottomNavigationBarOptions = [
      'Home',
      'Favorites',
      'Notifications',
      'Profile'
    ];

    List<IconData> bottomNavigationBarIcons = [
      Icons.home,
      Icons.favorite_border,
      Icons.notifications_none,
      Icons.person_outline
    ];

    return Container(
      height: 10,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        children: List.generate(bottomNavigationBarOptions.length, (index) {
          if (index == selectedOptionIndex) {
            return Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOptionIndex = index;
                  });
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          bottomNavigationBarIcons[index],
                          color: Colors.white,
                        ),
                        Text(
                          bottomNavigationBarOptions[index],
                          style: GoogleFonts.varelaRound(
                              fontSize: 0, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedOptionIndex = index;
                });
              },
              child: Icon(
                bottomNavigationBarIcons[index],
                color: Colors.white,
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _ExploreAllButton extends StatelessWidget {
  final Function onTap;
  const _ExploreAllButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffE0E6EE),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Text(
          'Explore All',
          style: GoogleFonts.varelaRound(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700]),
        ),
      ),
    );
  }
}
