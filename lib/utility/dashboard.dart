import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_cart/screens/grocery.dart';

class Dashboard extends StatelessWidget {
  Items item1 = new Items(
    title: "Grocery",
    subtitle: "Bread , CornFlakes",
    event: "",

    //img: "assets/dashboard/mobiles.png"
  );

  Items item2 = new Items(
    title: "Medicines",
    subtitle: "PharmEasy, Ketsaal",
    event: "",
    //img: "assets/dashboard/meds.png",
  );
  Items item3 = new Items(
    title: "Mobiles",
    subtitle: "OnePlus, Samsung",
    event: "",
    //img: " assets/dashboard/grocery.png",
  );
  Items item4 = new Items(
    title: "Furniture",
    subtitle: "Tables, Sofas",
    event: "",
    //img: " assets/dashboard/furniture.png",
  );
  Items item5 = new Items(
    title: "Appliances",
    subtitle: "TV, A.C",
    event: "",
    //img: " assets/dashboard/appliances.png",
  );
  Items item6 = new Items(
    title: "Fashion",
    subtitle: "Puma, Nike",
    event: "",
    //img: " assets/dashboard/fashion.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xffda90e8;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;

  Items({this.title, this.subtitle, this.event, this.img});
}
