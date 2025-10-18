import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

class DetailsPage1 extends StatefulWidget {
  const DetailsPage1({super.key});

  @override
  State<DetailsPage1> createState() => _DetailsPage1State();
}

class _DetailsPage1State extends State<DetailsPage1> {
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
          "Choose Location",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(
                Icons.location_on,
                weight: 10,
                color: Color(0xff139F25),
              ),
              title: Text(
                "Pick up location",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff989898),
                ),
              ),
              subtitle: Text(
                "Hatari Housing No.21, Wangon",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1E1E1E),
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                weight: 10,
                color: Color(0xff2F2F38),
              ),
            ),
            const SizedBox(height: 5,),
            ListTile(
              leading: Icon(
                Icons.location_on,
                weight: 10,
                color: Color(0xff139F25),
              ),
              title: Text(
                "Destination",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff989898),
                ),
              ),
              subtitle: Text(
                "Mangunsari Park, Purwokerto City",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1E1E1E),
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_down,
                weight: 10,
                color: Color(0xff2F2F38),
              ),
            ),
            const SizedBox(height: 20),

            Image.asset(
              "assets/images/img_11.png",
              width: 338,
              height: 289,
            ),
            const SizedBox(height: 20),
            
            CustomButttonDesign(text: "Confirm Location", onPressed: (){
              Get.toNamed(AppRoutes.detailsPage2);
            })
          ],
        ),
      ),
    );
  }
}
