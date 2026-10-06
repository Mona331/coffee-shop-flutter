import 'package:coffee_shop/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class Details extends StatefulWidget {
  final Map<String, dynamic> product;

  const Details({super.key, required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isExpanded = false;
  int y = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ofwhite,
      appBar: AppBar(
        backgroundColor: AppColors.ofwhite,

        title: Text('Detail'),
        centerTitle: true,
        actions: [Icon(Icons.favorite_border, color: AppColors.brownblack)],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 250,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/${widget.product['image']}",
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(right: 30, left: 30),
              child: Text(
                widget.product['name'],
                style: GoogleFonts.sora(
                  color: Colors.black,
                  fontSize: 20,
                  // fontWeight: FontWeight.w100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product['address'],
                    style: GoogleFonts.sora(
                      color: const Color.fromARGB(84, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(144, 227, 227, 227),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.coffee_maker_sharp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(144, 227, 227, 227),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.coffee,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(144, 227, 227, 227),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.timer,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(right: 30, left: 30),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  Expanded(
                    child: Text(
                      widget.product['rating'].toString(),
                      style: GoogleFonts.sora(
                        color: Colors.black,
                        fontSize: 20,
                        // fontWeight: FontWeight.w100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Divider(color: Colors.grey.shade300, thickness: 1),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                right: 30,
                left: 30,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Description',
                style: GoogleFonts.sora(
                  color: Colors.black,
                  fontSize: 16,
                  //fontWeight: FontWeight.w100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(right: 30, left: 30),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: isExpanded
                          ? widget.product['describe']
                          : '${widget.product['describe'].toString().substring(0, 80)}... ',
                      style: GoogleFonts.sora(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: isExpanded ? ' Read Less' : 'Read More',
                      style: GoogleFonts.sora(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        // fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                right: 30,
                left: 30,
                top: 30,
                bottom: 10,
              ),
              child: Text(
                'Size',
                style: GoogleFonts.sora(
                  color: Colors.black,
                  fontSize: 16,
                  //fontWeight: FontWeight.w100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                right: 30,
                left: 30,
                top: 10,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        y = 1;
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: y == 1 ? AppColors.primary : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'S',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: y == 1 ? AppColors.ofwhite : AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  InkWell(
                    onTap: () {
                      setState(() {
                        y = 2;
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: y == 2 ? AppColors.primary : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'M',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: y == 2 ? AppColors.ofwhite : AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  InkWell(
                    onTap: () {
                      setState(() {
                        y = 3;
                      });
                    },
                    child: Container(
                      width: 90,
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: y == 3 ? AppColors.primary : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'L',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: y == 3 ? AppColors.ofwhite : AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                right: 30,
                left: 30,
                top: 10,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16,
                          //fontWeight: FontWeight.w100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        widget.product['price'].toString(),
                        style: GoogleFonts.sora(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: 
                               AppColors.ofwhite,
                             
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
