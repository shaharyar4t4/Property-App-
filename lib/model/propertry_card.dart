import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String image;
  final String title;
  final String address;
  final int beds;
  final int baths;
  final int garage;

  PropertyCard({
    Key? key,
    required this.image,
    required this.title,
    required this.address,
    required this.beds,
    required this.baths,
    required this.garage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFebf1ff),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
            child: Image.asset(
              image,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'mulishbold'),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    address,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'mulish'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.bed, color: Colors.yellow.shade700, size: 16),
                      SizedBox(width: 1),
                      Text('$beds Beds', style: TextStyle(fontSize: 11)),
                      SizedBox(width: 10),
                      Icon(Icons.bathtub,
                          color: Colors.yellow.shade700, size: 16),
                      SizedBox(width: 1),
                      Text('$baths Baths', style: TextStyle(fontSize: 11)),
                      SizedBox(width: 10),
                      Icon(Icons.garage,
                          color: Colors.yellow.shade700, size: 16),
                      SizedBox(width: 1),
                      Text('$garage Garage', style: TextStyle(fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
