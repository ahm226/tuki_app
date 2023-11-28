import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/custom_validators.dart';
import '../../constants/global_variables.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/custom_widget.dart';

class CreateGuard extends StatefulWidget {
  const CreateGuard({Key? key}) : super(key: key);

  @override
  State<CreateGuard> createState() => _CreateGuardState();
}

class _CreateGuardState extends State<CreateGuard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create Guard Profile",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 95.w,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4), // Border width
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0, top: 10.0),
                      child: Text(
                        "Personal Details",
                        style: bodyNormal.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "First Name",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Last Name",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "National ID No",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Email",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Contact No",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 95.w,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4), // Border width
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0, top: 10.0),
                      child: Text(
                        "Other Details",
                        style: bodyNormal.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "License Plate",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Building Name",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Date of Birth",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 95.w,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4), // Border width
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 15.0, top: 10.0),
                      child: Text(
                        "Credentials",
                        style: bodyNormal.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Email",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 10.0),
                      child: CustomTextField(
                        // controller: emailEditingController,
                        validator: (value) => CustomValidator.email(value),
                        hintText: "Password",
                        // prefixIcon: AppImages.emailIcon,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: CustomButton(
                buttonText: "Done",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
