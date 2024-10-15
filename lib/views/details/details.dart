import 'package:flutter/material.dart';
import 'package:testining/color.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Details product',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: blackcolor),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: blackcolor),
        ),
        actions: [
          Image.asset('assets/Buy.png'),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset('assets/imgslider.png'),
          ),
          const SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Air pods max by Apple',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: blackcolor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 132, top: 9, bottom: 12, right: 20),
                          child: Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: heartbg),
                            child: Center(
                              child: Image.asset('assets/Heart.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text(
                          '\$ 1999,99',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: blackcolor),
                        ),
                        Text(
                          '( 219 people buy this )',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: blackcolor),
                        ),
                      ],
                    ),
                    Text(
                      'Choose the color',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: heartcolor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/Rectangle 8.png',
                          width: 61,
                          height: 41,
                        ),
                        const SizedBox(width: 10), // Add this
                        Image.asset(
                          'assets/Rectangle 12.png',
                          width: 71,
                          height: 51,
                        ),
                        const SizedBox(width: 10), // Add this
                        Image.asset(
                          'assets/Rectangle 13.png',
                          width: 61,
                          height: 41,
                        ),
                        const SizedBox(width: 10), // Add this
                        Image.asset(
                          'assets/Rectangle 14.png',
                          width: 61,
                          height: 41,
                        ),
                        const SizedBox(width: 10), // Add this
                        Image.asset(
                          'assets/Rectangle 15.png',
                          width: 61,
                          height: 41,
                        ),
                      ],
                    ),
                    const SizedBox(height: 9),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   width: 166, // Set the width of the container
                        Image.asset('assets/Rectangle 16.png'),
                        //       width: 166, height: 49),
                        // ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apple Store',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'online 12 mins ago',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 77, top: 6, bottom: 6, right: 20),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            width: 107,
                            height: 37,
                            decoration: BoxDecoration(
                                border: Border.all(width: 0.5),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          'Description of product',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      width: 350,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                            ),
                            // FittedBox(
                            // fit: BoxFit.scaleDown,
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.',
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: homebutton,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Frame 12.png',
              width: 167,
              height: 45,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Frame 13 (1).png',
              width: 167,
              height: 45,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
