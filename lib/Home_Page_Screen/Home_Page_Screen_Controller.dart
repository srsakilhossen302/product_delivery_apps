import 'package:flutter/material.dart';

class HomePageScreenController extends ChangeNotifier {
  /// Page Controller
  final PageController pageController = PageController();

  /// Bottom Nav Index
  int selectedIndex = 0;

  /// Update selected index
  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  /// List of banners
  List<Map<String, dynamic>> banners = [
    {
      "title": "Fast. Reliable. Hassle-Free Parcel Delivery.",
      "subtitle": "Your trusted partner for fast & safe deliveries. Send or receive with ease. Start shipping today!",
      "image": "assets/images/img_6.png",
      "bgColor": const Color(0xff139F25),
    },
    {
      "title": "Send Anywhere, Anytime.",
      "subtitle": "Fast shipping worldwide with real-time tracking.",
      "image": "assets/images/img_6.png",
      "bgColor": const Color(0xff139F25),
    },
    {
      "title": "Trusted By Thousands.",
      "subtitle": "Join thousands of happy customers who ship with us.",
      "image": "assets/images/img_6.png",
      "bgColor": const Color(0xff139F25),
    },
    {
      "title": "Safe & Secure Delivery.",
      "subtitle": "Every parcel is handled with care. We deliver smiles.",
      "image": "assets/images/img_6.png",
      "bgColor": const Color(0xff139F25),
    },
  ];
}
