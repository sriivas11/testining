import 'package:flutter/material.dart';
import 'package:testining/color.dart';
import 'package:testining/views/details/details.dart';
//import 'package:testining/size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'Flutter Demo',
      //theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // useMaterial3: true,
      // ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> data = []; // Initialize the list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Column(
            children: [
              AppBar(
                // backgroundColor: Colors.white,
                elevation: 0.1,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery address',
                      style: TextStyle(
                          color: greycolor,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    Text(
                      'Salatiga City, Central Java',
                      style: TextStyle(
                          color: blackcolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                actions: [
                  Image.asset('assets/Buy.png'),
                  const SizedBox(width: 13),
                  Image.asset('assets/Notification.png'),
                  const SizedBox(width: 13)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.9),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'search hear...',
                    hintStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    prefixIcon: Image.asset('assets/Ellipse_739.png'),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey2color),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey2color),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: grey2color),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, bottom: 9, right: 15, top: 10),
                //child: SingleChildScrollView(
                // scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/banner 1.png',
                    ),
                    const SizedBox(width: 1),
                    Image.asset(
                      'assets/banner 2.png',
                    ),
                  ],
                ),
              ),
              //),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 20, top: 6, right: 20, bottom: 13),
                    child: Text(
                      'Category',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 13, bottom: 17, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Image.asset('assets/c 2.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/c 1.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/c 3.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/c 4.png'),
                        ),
                        Expanded(
                          child: Image.asset('assets/c 5.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent product',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                          color: greycolor,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.only(
                          left: 15), // Add some padding to the text
                      child: Row(
                        children: [
                          Text(
                            'Filters',
                            style: TextStyle(color: blackcolor),
                          ),
                          IconButton(
                            icon: Image.asset('assets/Filter 2.png'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 283,
                width: 400, // adjust the height as needed
                child: GridView.builder(
                  itemCount: 10, // replace with your data length
                  itemBuilder: (context, index) {
                    String imagepath = '';
                    switch (index) {
                      case 0:
                        imagepath = 'assets/product card 1.png';
                        break;
                      case 1:
                        imagepath = 'assets/product card 2.png';
                        break;
                      case 2:
                        imagepath = 'assets/product card 3.png';
                        break;
                      case 3:
                        imagepath = 'assets/product card 4.png';
                        break;
                      case 4:
                        imagepath = 'assets/pc1.png';
                        break;
                      case 5:
                        imagepath = 'assets/pc2.png';
                        break;
                      case 6:
                        imagepath = 'assets/pc3.png';
                        break;
                      case 7:
                        imagepath = 'assets/pc4.png';
                        break;
                      case 8:
                        imagepath = 'assets/pc5.png';
                        break;
                      case 9:
                        imagepath = 'assets/pc6.png';
                        break;
                    }
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DetailsPage()));
                      },
                      child: Image.asset(imagepath),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of columns
                    mainAxisSpacing: 0.01,
                    crossAxisSpacing: 0.01, // aspect ratio of each grid item
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: homebutton,
          unselectedItemColor: blackcolor,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Home.png',
                width: 28,
                height: 28,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Heart.png',
                width: 28,
                height: 28,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Paper.png',
                width: 28,
                height: 28,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/Profile.png',
                width: 28,
                height: 28,
              ),
              label: 'Account',
            ),
          ],
        ));
  }
}
