import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tuki_app/constants/global_variables.dart';

import '../constants/custom_navigation.dart';
import 'booking_listing.dart';
import 'event_listing.dart';
import 'guard_listing.dart';
import 'owners_listing.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard (Community 1)",
          style: bodyNormal,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ), // You can use any other icon you prefer
          onPressed: () {
            // Add your code to handle the sidebar icon tap here
            // For example, you can open a drawer or navigate to a new screen
          },
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.yellow[900],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    PageTransition.pageNavigation(page: OwnerListing());
                  },
                  child: Container(
                    height: 6.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Color(0xff57009B26),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 3.h,
                          height: 10.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.white, // Replace with your desired color
                          ),
                          child: Center(child: Text("38")),
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            "Owners",
                            style: bodySmall,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    PageTransition.pageNavigation(page: GuardListing());
                  },
                  child: Container(
                    height: 6.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Color(0xff57009B26),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 3.h,
                          height: 10.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.white, // Replace with your desired color
                          ),
                          child: Center(child: Text("05")),
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            "Guards",
                            style: bodySmall,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    PageTransition.pageNavigation(page: BookingListing());
                  },
                  child: Container(
                    height: 6.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Color(0xff57009B26),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 3.h,
                          height: 10.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.white, // Replace with your desired color
                          ),
                          child: Center(child: Text("03")),
                        ),
                        Container(
                          child: Center(
                              child: Text(
                            "Bookings",
                            style: bodySmall,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Current Events",
                  style:
                      title.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                    PageTransition.pageNavigation(page: EventListing());
                  },
                  child: Container(
                    height: 3.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                        child: Text(
                      "View All",
                      style: bodyNormal,
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 40.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 5,
                    blurRadius: 10, // Offset of the shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
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
                    padding: const EdgeInsets.only(left: 18.0),
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
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2 Seats Available",
                          style: bodyNormal.copyWith(color: Colors.grey[700]),
                        ),
                        Text(
                          "\$200",
                          style:
                              bodyNormal.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Description Candle Light Dinner",
                          style: bodyNormal.copyWith(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Created :12-12-2023",
                          style: bodyNormal.copyWith(color: Colors.grey[700]),
                        ),
                        Text(
                          "Expired :12-12-2023",
                          style: bodyNormal.copyWith(color: Colors.red[700]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time: 10pm to 12am",
                          style: bodyNormal.copyWith(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "<-Previous",
                    style: bodyNormal,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Next->",
                    style: bodyNormal,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 5.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue, // Border width
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Text(
                      'Add New Events +',
                      style: bodyNormal.copyWith(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 5.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xff57009B26),
                    border: Border.all(
                      color: Color(0xffC7C6C6FF), // Border width
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assest/images/ownerIcon.png",
                                height: 3.h,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Create Owner',
                                style: bodyNormal,
                              ),
                            ],
                          ),
                          Icon(Icons.navigate_next_outlined)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 5.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xfffaf5cc),
                    border: Border.all(
                      color: Color(0xffC7C6C6FF), // Border width
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assest/images/guardIcon.png",
                                height: 3.h,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Create Guards Profile',
                                style: bodyNormal,
                              ),
                            ],
                          ),
                          Icon(Icons.navigate_next_outlined)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 5.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xffa5b2ec),
                    border: Border.all(
                      color: Color(0xffC7C6C6FF), // Border width
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assest/images/alertIcon.png",
                                height: 3.h,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                'Create Alerts',
                                style: bodyNormal,
                              ),
                            ],
                          ),
                          Icon(Icons.navigate_next_outlined)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
