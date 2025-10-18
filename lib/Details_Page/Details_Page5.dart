import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import '../App_Routes/app_routes.dart';
import 'Fukk_Screen_Sheet2.dart';

class DetailsPage5 extends StatefulWidget {
  const DetailsPage5({super.key});

  @override
  State<DetailsPage5> createState() => _DetailsPage5State();
}

class _DetailsPage5State extends State<DetailsPage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff333333),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Rider",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 20, right: 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/img_14.png",
                  width: 338,
                  height: 289,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 414,
                width: 375,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  border: Border(
                    top: BorderSide(color: Colors.black12, width: 1),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/img_13.png",
                      width: 375,
                      height: 34,
                    ),

                    Container(
                      width: 375,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xffD7D7D7),
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        "Rider is arriving in 10 min",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    Container(
                      width: 337,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: const Color(0xffD7D7D7),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 5),
                          Image.asset(
                            "assets/Icons/img_8.png",
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
                                "Md. Shohag",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    weight: 16,
                                    size: 16,
                                    color: Color(0xffFFD500),
                                  ),
                                  const SizedBox(width: 3),
                                  Text(
                                    "4.9   ( 35 Trips)",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Icons/img_9.png",
                                    width: 16,
                                    height: 16,
                                    //color: Color(0xffF6FBF6),
                                  ),
                                  const SizedBox(width: 3),
                                  Text(
                                    " Bike: Yamaha YZF-R1",
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

                    const SizedBox(height: 16),

                    SizedBox(
                      width: 370,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff139F25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                            side: const BorderSide(
                              color: Colors.black12,
                              width: 1,
                            ),
                          ),
                          elevation: 0,
                        ),
                        onPressed: (){
                         // Get.toNamed(AppRoutes.detailsPage5);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.asset(
                              'assets/Icons/img_10.png',
                              height: 24,
                              width: 24,
                              color: Color(0xffFFFFFF),
                            ),
                            const SizedBox(width: 12),

                            // Text
                            Text(
                              "Call Rider",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 370,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                            side: const BorderSide(
                              color: Color(0xffE93330),
                              width: 1,
                            ),
                          ),
                          elevation: 0,
                        ),
                        onPressed: (){

                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (context) => const FukkScreenSheet2(),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text
                            Text(
                              "Cancel Ruquest",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffE93330),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
