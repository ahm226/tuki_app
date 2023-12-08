import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../api_services/api_exceptions.dart';
import '../api_services/data_api.dart';
import '../constants/custom_dialog.dart';
import '../models/admin_dashboard_model.dart';
import 'general_controller.dart';

class AdminController extends GetxController {
  late AdminDashBoardModel adminDashBoard;
  final GeneralController _generalController = Get.find<GeneralController>();

  Future getAdminDashBoard(BuildContext context) async {
    http.Response response = await DataApiService.instance
        .get(
      '/admin/dashboard',
    )
        .catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        CustomDialogBox.showErrorDialog(
            description: apiError["message"], context: context);
      } else {
        _generalController.handleError(error, context);
      }
    });
    if (response == null) return;
    var result = json.decode(response.body);
    print("response.statusCode");
    print(response.statusCode);
    if (response.statusCode == 200) {
      adminDashBoard = AdminDashBoardModel.fromJson(result);
      return "true";
    } else {
      return "false";
    }
  }
}
