import 'package:flutter/material.dart';
import 'package:houserentapp/model/house.dart';
import 'package:houserentapp/screen/dashbored.dart';
import 'package:houserentapp/screen/product_page.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  // final List<House> houses = [
  //   House(
  //     title: 'Craftsman House',
  //     address: '520 N Btoudry Ave Los Angeles',
  //     beds: 4,
  //     baths: 4,
  //     garages: 1,
  //     imageUrl: 'assets/images/Subtract.png', // Replace with actual image path
  //   ),
  //   House(
  //     title: 'Craftsman House 1',
  //     address: '520 N Btoudry Ave Los Angeles',
  //     beds: 4,
  //     baths: 4,
  //     garages: 1,
  //     imageUrl: 'assets/images/Subtract.png', // Replace with actual image path
  //   ),
  // ];
  final List<House> wishList = [];

  void toggleWishList(House house) {
    setState(() {
      if (wishList.contains(house)) {
        wishList.remove(house);
      } else {
        wishList.add(house);
      }
    });
  }

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
                    "Wishlist",
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

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 27, top: 20
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/images.png"),
                      Container(
                        width: 305,
                        height: 130,
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
                                          builder: (context) => ProductPage()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "FARM HOUSE",
                                      style: TextStyle(
                                          fontFamily: 'mulishbold',
                                          color: Colors.white,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 23),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEAF1FF),
                                            // Light background color
                                            borderRadius: BorderRadius.circular(
                                                12), // Rounded corners
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              // Bookmark icon
                                              size: 20,
                                              color: Colors.black, // Icon color
                                            ),
                                          )),
                                    ),
                                  ],
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
                  padding: const EdgeInsets.only(left: 27, top: 15, bottom: 18),
                  child: Column(
                    children: [
                      Image.asset("assets/images/Subtract.png"),
                      Container(
                        width: 305,
                        height: 130,
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
                                          builder: (context) => ProductPage()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "CRAFTSMAN HOUSE",
                                      style: TextStyle(
                                          fontFamily: 'mulishbold',
                                          color: Colors.white,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 23),
                                      child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEAF1FF),
                                            // Light background color
                                            borderRadius: BorderRadius.circular(
                                                12), // Rounded corners
                                          ),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.bookmark_outline,
                                              // Bookmark icon
                                              size: 20,
                                              color: Colors.black, // Icon color
                                            ),
                                          )),
                                    ),
                                  ],
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
                  width: 20,
                ),
              ],
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: houses.length,
            //   itemBuilder: (context, index) {
            //     final house = houses[index];
            //     final isWishListed = wishList.contains(house);
            //     return Card(
            //       margin: EdgeInsets.all(10),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Image.asset(house.imageUrl),
            //           // Replace with NetworkImage for online images
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   house.title,
            //                   style: TextStyle(
            //                       fontSize: 18, fontWeight: FontWeight.bold),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(house.address),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Icon(Icons.bed, size: 16),
            //                     SizedBox(width: 5),
            //                     Text('${house.beds} Beds'),
            //                     SizedBox(width: 15),
            //                     Icon(Icons.bathtub, size: 16),
            //                     SizedBox(width: 5),
            //                     Text('${house.baths} Baths'),
            //                     SizedBox(width: 15),
            //                     Icon(Icons.garage, size: 16),
            //                     SizedBox(width: 5),
            //                     Text('${house.garages} Garage'),
            //                   ],
            //                 ),
            //                 SizedBox(height: 10),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.end,
            //                   children: [
            //                     IconButton(
            //                       icon: Icon(
            //                         isWishListed
            //                             ? Icons.bookmark
            //                             : Icons.bookmark_border,
            //                         color: isWishListed
            //                             ? Colors.blue
            //                             : Colors.grey,
            //                       ),
            //                       onPressed: () => toggleWishList(house),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      )),
    );
  }
}
