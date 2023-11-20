import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/global_variables.dart';

class EventListing extends StatefulWidget {
  const EventListing({Key? key}) : super(key: key);

  @override
  State<EventListing> createState() => _EventListingState();
}

class _EventListingState extends State<EventListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Events",
          style: bodyNormal,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before_outlined,
            color: Colors.black,
          ), // You can use any other icon you prefer
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Current Events",
                  style: bodyNormal.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 4.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue, // Border width
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Text(
                          'Add Event +',
                          style: bodyNormal.copyWith(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.1), // Shadow color
                            spreadRadius: 5,
                            blurRadius: 10, // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assest/images/eventImage.png",
                              width: 80.w,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Text(
                              "Sample Restaurant",
                              style: bodyNormal.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "2 Seats Available",
                                  style: bodyNormal.copyWith(
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  "\$200",
                                  style: bodyNormal.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Description Candle Light Dinner",
                                  style: bodyNormal.copyWith(
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Created :12-12-2023",
                                  style: bodyNormal.copyWith(
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  "Expired :12-12-2023",
                                  style: bodyNormal.copyWith(
                                      color: Colors.red[700]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Divider(),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Time: 10pm to 12am",
                                  style: bodyNormal.copyWith(
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
