import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tuki_app/views/admin_dashboard.dart';

import 'constants/custom_navigation.dart';
import 'constants/global_variables.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  getData() async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      PageTransition.pageProperNavigation(page: AdminDashboard());
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(child: Text("Tuki App")),
      ),
    );
  }
}
