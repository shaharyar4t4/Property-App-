import 'package:flutter/material.dart';
import 'package:houserentapp/constant/colour.dart';
import 'package:houserentapp/screen/dashbored.dart';
import 'package:houserentapp/screen/thank_you.dart';

class ProductPages extends StatefulWidget {
  const ProductPages({super.key});

  @override
  State<ProductPages> createState() => _ProductPagesState();
}

class _ProductPagesState extends State<ProductPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      Text(
                        "Detial",
                        style: TextStyle(fontFamily: 'mulishbold', fontSize: 22),
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
                                      builder: (context) => Dashbored()));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new, // Bookmark icon
                              size: 28,
                              color: Colors.black, // Icon color
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Image.asset('assets/images/imagese.png', ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FARM HOUSE",
                            style: TextStyle(
                                fontFamily: 'mulishbold',
                                color: Colors.black,
                                fontSize: 20),
                          ),
                          Text("520 N Beaudry Ave, Los Angeles",
                              style: TextStyle(
                                  fontFamily: 'mulish',
                                  color: Colors.black,
                                  fontSize: 12)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.bed, color: Color(0xFFf5c945), size: 23),
                              SizedBox(width: 2),
                              Text('Beds', style: TextStyle(fontSize: 14)),
                              SizedBox(width: 12),
                              Icon(Icons.bathtub,
                                  color: Color(0xFFf5c945), size: 23),
                              SizedBox(width: 2),
                              Text(' Baths', style: TextStyle(fontSize: 14)),
                              SizedBox(width: 12),
                              Icon(Icons.garage,
                                  color: Color(0xFFf5c945), size: 23),
                              SizedBox(width: 2),
                              Text(' Garage', style: TextStyle(fontSize: 14)),
                            ],
                          ),
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
                              final snackBar = SnackBar(
                                content: const Text('Wishlist is Updated...', style: TextStyle(color: Colors.white),),
                                backgroundColor: box,
                                action: SnackBarAction(
                                  label: '',
                                  onPressed: () {
                                    // Some code to undo the change.
                                  },
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23, top: 16),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/man.jpg'),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balthazar",
                                  style: TextStyle(
                                      fontFamily: 'mulishbold',
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                                Text("Owner Craftsman House",
                                    style: TextStyle(
                                        fontFamily: 'mulish',
                                        color: Colors.black,
                                        fontSize: 11)),
                              ]),
                          SizedBox(
                            width: 26,
                          ),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Call',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: box, // Background color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23, top: 10),
                  child: Text(
                    "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read more",
                    style: TextStyle(
                        fontFamily: 'mulish', fontSize: 13, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text("Gallery",
                      style: TextStyle(
                          fontFamily: 'mulishbold',
                          fontSize: 15,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Image.asset('assets/images/grid.png'),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23),
                  child: Text("Price",
                      style: TextStyle(
                          fontFamily: 'mulishbold',
                          fontSize: 15,
                          color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$5990000",
                        style: TextStyle(fontSize: 23, fontFamily: 'mulishbold'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => ThankYou()));
                        },
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                              fontFamily: 'mulishbold', color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: box,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
    );
  }
}
