import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:product_delivery_apps/App_Routes/app_routes.dart';

class FukkScreenSheet2 extends StatelessWidget {
  const FukkScreenSheet2({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.70,
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
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Icons/img_7.png",
                        width: 132,
                        height: 132,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Are you Sure you Want to",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                      Text(
                        "Cancel?",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff333333),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Cancelling will remove all your order details.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                      Text(
                            " If you proceed, you’ll need to start a new order.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575),
                        ),
                      ),
                      const SizedBox(height: 29),

                      SizedBox(
                        width: 370,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffE93330),
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
                            Get.toNamed(AppRoutes.homePage);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text
                              Text(
                                "Yes",
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
                                color: Colors.black12,
                                width: 1,
                              ),
                            ),
                            elevation: 0,
                          ),
                          onPressed: (){
                            Get.toNamed(AppRoutes.detailsPage5);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text
                              Text(
                                "No",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff139F25),
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
        );
      },
    );
  }
}
