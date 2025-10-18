import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../App_Routes/app_routes.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  /// Page Controller
  final PageController _pageController = PageController();

  /// naviga...
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Profile Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/images/img_5.png",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi, Sazzad",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                  color: Color(0xff757575),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "Riyadh ,Saudi Arabia",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 20,
                                  color: Color(0xff757575),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                            color: Color(0xff333333),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 12,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff139F25),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Track your Parcel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Please enter your order id",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffFFFFFF),
                        labelText: "Order id",
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff989898),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          size: 25,
                          color: Color(0xff139F25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              /// PageView (Banner Slider)
              SizedBox(
                height: 220,
                child: PageView(
                  controller: _pageController,
                  children: [
                    buildBanner(
                      title: "Fast. Reliable. Hassle-Free Parcel Delivery.",
                      subtitle:
                          "Your trusted partner for fast & safe deliveries. Send or receive with ease. Start shipping today!",
                      image: "assets/images/img_6.png",
                      bgColor: const Color(0xff139F25),
                    ),
                    buildBanner(
                      title: "Send Anywhere, Anytime.",
                      subtitle:
                          "Fast shipping worldwide with real-time tracking.",
                      image: "assets/images/img_6.png",
                      bgColor: const Color(0xff139F25),
                    ),
                    buildBanner(
                      title: "Trusted By Thousands.",
                      subtitle:
                          "Join thousands of happy customers who ship with us.",
                      image: "assets/images/img_6.png",
                      bgColor: const Color(0xff139F25),
                    ),
                    buildBanner(
                      title: "Safe & Secure Delivery.",
                      subtitle:
                          "Every parcel is handled with care. We deliver smiles.",
                      image: "assets/images/img_6.png",
                      bgColor: const Color(0xff139F25),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),
              SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xffFFFFFF),
                  dotColor: const Color(0xff989898),
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 6,
                  expansionFactor: 3,
                ),
              ),
              const SizedBox(height: 20),

              SizedBox(
                width: 370,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Color(0xff139F25),
                        width: 1,
                      ),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.detailsPage1);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/img_7.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 12),
                      /// Text
                      Text(
                        "Create New Shipment",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Recent ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff333333),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  //////////
                },
                child: Container(
                  width: 370,
                  height: 86,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffD7D7D7), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5),
                      Image.asset(
                        "assets/images/img_8.png",
                        width: 50,
                        height: 50,
                        //color: Color(0xffF6FBF6),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: (){
                         // Get.toNamed(AppRoutes.detailsPage1);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Robert Downy",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "D.I Panjaitan Street, Purwokerto City",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  weight: 16,
                                  size: 16,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  "10 April 2025 , 10:30 am",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 370,
                height: 86,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: const Color(0xffD7D7D7), width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5),
                    Image.asset(
                      "assets/images/img_8.png",
                      width: 50,
                      height: 50,
                      //color: Color(0xffF6FBF6),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Robert Downy",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          "D.I Panjaitan Street, Purwokerto City",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              weight: 16,
                              size: 16,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              "10 April 2025 , 10:30 am",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(Icons.home, "Home", 0),
            buildNavItem(Icons.location_on, "Map", 1),
            buildNavItem(Icons.search, "Search", 2),
            buildNavItem(Icons.person, "Profile", 3),
          ],
        ),
      ),
    );
  }

  Widget buildBanner({
    required String title,
    required String subtitle,
    required String image,
    required Color bgColor,
  }) {
    return Container(
      width: 335,
      height: 160,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffFFFFFF),
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: const Color(0xffFFFFFF),
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          //const SizedBox(width: 12),
          Image.asset(image, height: 145, width: 130, fit: BoxFit.fitHeight),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: isSelected
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xff139F25),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(icon, color: Colors.white, size: 22),
                  if (label.isNotEmpty) ...[
                    const SizedBox(width: 6),
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            )
          : Icon(icon, color: Colors.grey, size: 26),
    );
  }
}
