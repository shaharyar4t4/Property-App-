import 'package:flutter/material.dart';
import 'package:houserentapp/model/propertry_card.dart';
import 'package:houserentapp/screen/product_page.dart';
import 'package:houserentapp/screen/product_pages.dart';
import 'package:houserentapp/screen/wishlistscreen.dart';

class Dashbored extends StatefulWidget {
  const Dashbored({super.key});

  @override
  State<Dashbored> createState() => _DashboredState();
}

class _DashboredState extends State<Dashbored> {
  final List<Map<String, dynamic>> properties = [
    {
      "image": "assets/images/home.png", // Replace with your image URL
      "title": "RANCH HOME",
      "address": "520 N Btoudry Ave Los Angeles",
      "beds": 4,
      "baths": 4,
      "garage": 1,
    },
  ];
  String selectedOption = 'House';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            fontFamily: 'mulish',
                            color: Colors.black,
                            fontSize: 13),
                      ),
                      Text("Los Angeles, CA",
                          style: TextStyle(
                              fontFamily: 'mulishbold',
                              color: Colors.black,
                              fontSize: 14)),
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF1FF), // Light background color
                        borderRadius:
                            BorderRadius.circular(12), // Rounded corners
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wishlist()));
                        },
                        icon: Icon(
                          Icons.bookmark_outline, // Bookmark icon
                          size: 28,
                          color: Colors.black, // Icon color
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 23,
              ),
              child: Text(
                "Discover Best \nSuitable Property",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'mulishbold',
                ),
                maxLines: 3,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildSelectableButton('House'),
                    SizedBox(width: 10),
                    buildSelectableButton('Apartement'),
                    SizedBox(width: 10),
                    buildSelectableButton('Flat'),
                    SizedBox(width: 10),
                    buildSelectableButton('Dormintory'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: const Text(
                "Best for you",
                style: TextStyle(
                    fontFamily: 'mulishbold',
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Subtract.png"),
                        Container(
                          width: 305,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFF0f2f45),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(21),
                                bottomRight: Radius.circular(21)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductPage()));
                                  },
                                  child: Text(
                                    "CRAFTSMAN HOUSE",
                                    style: TextStyle(
                                        fontFamily: 'mulishbold',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ),
                                Text(
                                  "520 N Btoudry Ave Los Angeles",
                                  style: TextStyle(
                                      fontFamily: 'mulishbold',
                                      color: Color(0xFF738794),
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Image.asset('assets/images/Frame 1.png')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/images.png"),
                        Container(
                          width: 305,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFF0f2f45),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(21),
                                bottomRight: Radius.circular(21)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductPages()));
                                  },
                                  child: Text(
                                    "FARM HOUSE",
                                    style: TextStyle(
                                        fontFamily: 'mulishbold',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                ),
                                Text(
                                  "520 N Btoudry Ave Los Angeles",
                                  style: TextStyle(
                                      fontFamily: 'mulishbold',
                                      color: Color(0xFF738794),
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Image.asset('assets/images/Frame 1.png')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: const Text(
                "Nearby your location",
                style: TextStyle(
                    fontFamily: 'mulishbold',
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: properties.length,
                  itemBuilder: (context, index) {
                    final property = properties[index];
                    return PropertyCard(
                      image: property['image'],
                      title: property['title'],
                      address: property['address'],
                      beds: property['beds'],
                      baths: property['baths'],
                      garage: property['garage'],
                    );
                  }),
            ),

          ],
        ),
      )),
    );
  }

  buildSelectableButton(String label) {
    bool isSelected = selectedOption == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = label;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF0f2f45) : Color(0xFFebf1ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 15,
              color: isSelected ? Colors.white : Colors.black,
              fontFamily: 'mulishbold'),
        ),
      ),
    );
  }
}
