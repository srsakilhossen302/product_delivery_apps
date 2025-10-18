import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/Custom_design/Custom_Buttton_Design.dart';

import '../App_Routes/app_routes.dart';

class FullScreenSheet extends StatelessWidget {
  const FullScreenSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.90,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
            
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon .png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Homemade food",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Home-cooked meals",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon2.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Clothes",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Folded or packed securely.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon3.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Documents",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "No Passport or bank cheques",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon4.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Gifts",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Flowers, cards, chocolates, and others",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon5.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Cosmetics",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Makeup, skincare, or hygiene products.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon6.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Medicine",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Prescription or over the counter medicines",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon7.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Accessories",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Watches, jewelry, bags, shoes etc,",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 360,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xffD7D7D7), width: 1),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/TripIcon8.png",
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        "Electronics",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                      subtitle: Text(
                        "Stationery, small tools, or household items",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                
                CustomButttonDesign(text: "Continue", onPressed: (){
                  Get.toNamed(AppRoutes.detailsPage2);
                })
              ],
            ),
          ),
        );
      },
    );
  }
}
