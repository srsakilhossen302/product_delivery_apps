import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import '../App_Routes/app_routes.dart';

class DetailsPage3 extends StatefulWidget {
  const DetailsPage3({super.key});

  @override
  State<DetailsPage3> createState() => _DetailsPage3State();
}

class _DetailsPage3State extends State<DetailsPage3> {
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
          "Summery",
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
                  "assets/images/img_11.png",
                  width: 338,
                  height: 289,
                ),
              ),
              const SizedBox(height: 42),
              Container(
                height: 452,
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
                    const SizedBox(height: 12),
                    Container(
                      width: 337,
                      height: 129,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Color(0xffD7D7D7), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Text(
                                  "Recipient Information",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img.png",
                                width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Emma Hardy",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_1.png",
                                  width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "(555) 123-4567",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_2.png",
                                  width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Mangunsari Park, Purwokerto City",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 337,
                      height: 157,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: Color(0xffD7D7D7), width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Text(
                                  "Parcel Details",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_3.png",
                                  width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Parcel Type: Gift",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_4.png",
                                  width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  "Parcel Value :  \$100",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_5.png",
                                  width: 16,
                                  height: 16,
                                ),
                                   SizedBox(height: 6),
                                Text(
                                  "Distance: 5 KM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),

                            child: Row(
                              children: [
                                Image.asset("assets/Icons/img_6.png",
                                  width: 16,
                                  height: 16,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Delivery Charge: \$10",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff757575),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    CustomButttonDesign(text: "Send Request ", onPressed: (){
                      Get.toNamed(AppRoutes.detailsPage4);
                    })

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
