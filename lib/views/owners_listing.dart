import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../constants/global_variables.dart';

class OwnerListing extends StatefulWidget {
  const OwnerListing({Key? key}) : super(key: key);

  @override
  State<OwnerListing> createState() => _OwnerListingState();
}

class _OwnerListingState extends State<OwnerListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Owners",
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
                  "Owner List",
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
                          'Add Owner +',
                          style: bodyNormal.copyWith(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 18.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F9FF),
                          border: Border.all(
                            color: Color(0xffC7C6C6FF), // Border width
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assest/images/ownerName.png",
                                        height: 7.h,
                                      ),
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nelson Aston',
                                            style: bodyNormal,
                                          ),
                                          Text(
                                            'nelson@gmail.com',
                                            style: hintText,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  PopupMenuButton<String>(
                                    icon: Icon(Icons.more_vert),
                                    // 3-dots icon
                                    onSelected: (value) {
                                      // Handle the selected value
                                      print('Selected: $value');
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return [
                                        PopupMenuItem<String>(
                                          value: 'Option 1',
                                          child: Text('View Details'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'Option 2',
                                          child: Text('Eliminate Account'),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'Option 3',
                                          child: Text('Send Warning'),
                                        ),
                                      ];
                                    },
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'License Plate',
                                    style: bodyNormal,
                                  ),
                                  Text(
                                    '#000000',
                                    style:
                                        bodyNormal.copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Tenants & Co Owners',
                                    style: bodyNormal,
                                  ),
                                  Text(
                                    '04',
                                    style:
                                        bodyNormal.copyWith(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
