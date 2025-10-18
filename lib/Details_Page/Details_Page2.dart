import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import 'Fukk_Screen_Sheet.dart';

class DetailsPage2 extends StatefulWidget {
  const DetailsPage2({super.key});

  @override
  State<DetailsPage2> createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
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
          "Parcel Details",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Receivers Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                // controller: authController.nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Enter Receivers name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Contact Number",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                // controller: authController.nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Enter contact Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Additional Instruction",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                // controller: authController.nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Giver Additional Instruction ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Parcel Type",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                // controller: authController.nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  //labelText: "Enter your full name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => const FullScreenSheet(),
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      weight: 24,
                      color: Color(0xff757575),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Parcel Value",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              TextField(
                // controller: authController.nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Give product value amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Text(
                "Parcel Weight",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Image.asset("assets/images/img_12.png", height: 40, width: 370),
              const SizedBox(height: 18),
              Text(
                "Select Ride",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 13),
              Row(
                children: [
                  Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xff139F25), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Bike.png",
                          width: 58,
                          height: 56,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Bike",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Car.png",
                          width: 58,
                          height: 56,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Car",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 31),
              CustomButttonDesign(text: "Continue", onPressed: (){
                Get.toNamed(AppRoutes.detailsPage3);
              })

            ],
          ),
        ),
      ),
    );
  }
}
