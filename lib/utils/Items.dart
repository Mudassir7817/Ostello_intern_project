import 'package:flutter/material.dart';

import 'Colors.dart';

class Items {
  // Widget for displaying individual coaching center information
  static Widget bodyItem(
      String title, double rating, String imagePath, BuildContext context) {
    // Calculate scaling factors for responsive design
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // Styling for the coaching center container
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 21 * fem, 21 * fem),
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
      width: 338 * fem,
      decoration: BoxDecoration(
        color: const Color(0xfff6effe),
        borderRadius: BorderRadius.circular(16 * fem),
      ),
      // Main content inside the coaching center container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // Styling for the top part of the coaching center container
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            padding:
                EdgeInsets.fromLTRB(12 * fem, 12 * fem, 18 * fem, 14 * fem),
            width: double.infinity,
            height: 175 * fem,
            decoration: BoxDecoration(
              color: const Color(0xfff6effe),
              borderRadius: BorderRadius.circular(16 * fem),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(0 * fem, 0 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            // Content inside the top part of the coaching center container
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Left side of the top part with image
                Container(
                  // Styling for the left side
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 0 * fem),
                  padding: EdgeInsets.fromLTRB(
                      22.1 * fem, 126.54 * fem, 42.43 * fem, 7.46 * fem),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.006, 0.075),
                      end: Alignment(0.006, 0.767),
                      colors: <Color>[Color(0x00ffffff), Color(0xe57d23e0)],
                      stops: <double>[0, 0.944],
                    ),
                    borderRadius: BorderRadius.circular(10 * fem),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imagePath,
                      ),
                    ),
                  ),
                  // Image with gradient and decoration
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Image with gradient and decoration
                      Container(
                        // Styling for the image container
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 4.62 * fem, 2.72 * fem),
                        width: 5.85 * fem,
                        height: 9.93 * fem,
                        child: Image.asset(
                          imagePath,
                          width: 5.85 * fem,
                          height: 9.93 * fem,
                        ),
                      ),
                      Text(
                        'Kalkaji , New Delhi',
                        style: SafeGoogleFont(
                          'Avenir Next LT Pro',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          letterSpacing: 0.1 * fem,
                          color: const Color(0xeaffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                  width: 139 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 8 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 113 * fem,
                              ),
                              child: Text(
                                title,
                                style: SafeGoogleFont(
                                  'Avenir Next LT Pro',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.0625 * ffem / fem,
                                  letterSpacing: 0.16 * fem,
                                  color: const Color(0xff272727),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 10 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3 * fem, 1 * fem),
                                    width: 14 * fem,
                                    height: 14 * fem,
                                    child: Image.asset(
                                      'assets/images/star.png',
                                      width: 14 * fem,
                                      height: 14 * fem,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                    child: Text(
                                      rating.toString(),
                                      style: SafeGoogleFont(
                                        'Avenir Next LT Pro',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.4166666667 * ffem / fem,
                                        letterSpacing: 0.12 * fem,
                                        color: const Color(0xff414141),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                    width: 3 * fem,
                                    height: 3 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(1.5 * fem),
                                      color: const Color(0xff414141),
                                    ),
                                  ),
                                  Text(
                                    '3 kms away',
                                    style: SafeGoogleFont(
                                      'Avenir Next LT Pro',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.4166666667 * ffem / fem,
                                      letterSpacing: 0.12 * fem,
                                      color: const Color(0xff414141),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              height: 19 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 9 * fem, 0 * fem),
                                    width: 69 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0x777d23e0)),
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PYHSICS',
                                        style: SafeGoogleFont(
                                          'Avenir Next LT Pro',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff7d23e0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0x777d23e0)),
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'MATHS',
                                        style: SafeGoogleFont(
                                          'Avenir Next LT Pro',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff7d23e0),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 9 * fem),
                        width: double.infinity,
                        height: 19 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 12 * fem, 0 * fem),
                              width: 86 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0x777d23e0)),
                                borderRadius: BorderRadius.circular(4 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'CHEMISTRY',
                                  style: SafeGoogleFont(
                                    'Avenir Next LT Pro',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1 * ffem / fem,
                                    letterSpacing: 1.2 * fem,
                                    color: const Color(0xff7d23e0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 41 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0x777d23e0)),
                                borderRadius: BorderRadius.circular(4 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'JEE ',
                                  style: SafeGoogleFont(
                                    'Avenir Next LT Pro',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1 * ffem / fem,
                                    letterSpacing: 1.2 * fem,
                                    color: const Color(0xff7d23e0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 82 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            6 * fem, 2 * fem, 12 * fem, 0 * fem),
                        decoration: BoxDecoration(
                          color: const Color(0xff7d23e0),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Text(
                          '20% OFF',
                          style: SafeGoogleFont(
                            'Avenir Next LT Pro',
                            fontSize: 10 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.7 * ffem / fem,
                            letterSpacing: 0.1 * fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              '2 of your school students study here',
              style: SafeGoogleFont(
                'Avenir Next LT Pro',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.4166666667 * ffem / fem,
                color: const Color(0xff414141),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for displaying filter/sort options
  static Widget items(String name, String? imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              )),
          child: Row(
            children: [
              imagePath != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: themeColor),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(
                        left: 12.0,
                        right: 12.0,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: themeColor),
                      )),
              if (imagePath != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                      width: 18, height: 20, child: Image.asset(imagePath)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
