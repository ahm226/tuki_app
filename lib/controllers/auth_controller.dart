import 'package:get/get.dart';

class AuthController extends GetxController {
  RxString token = "".obs;
  RxString fcmToken = ''.obs;
  RxInt userType = 0.obs;

  /*<---------------------Register--------------------->*/

  // Future userRegister(var body, BuildContext context, socialLogin) async {
  //   _generalController.showLoading('Registering account...');
  //   var response = await DataApiService.instance
  //       .post('/sign-up', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   _generalController.hideLoading();
  //   final result = jsonDecode(response);
  //   if (result['status'] == true) {
  //     if (socialLogin) {
  //       return true;
  //     } else {
  //       await _generalController.successDialog(
  //           context, "Success", result['message']);
  //       Get.offAll(() => VerifyEmail(
  //             email: body['email'].toString(),
  //           ));
  //     }
  //   } else if (result['success'] == false) {
  //     if (socialLogin) {
  //       return false;
  //     } else {
  //       _generalController.errorDialog(context, "Error", result['info']);
  //     }
  //   }
  // }
  //
  // Future userLogin(var body, BuildContext context, bool fromSplash) async {
  //   fromSplash ? null : _generalController.showLoading('Logging user...');
  //   var response =
  //       await DataApiService.instance.post('/login', body).catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   // fromSplash ? null : _baseController.hideLoading();
  //   var result = json.decode(response);
  //   if (result['status']) {
  //     userData = await UserModel.fromJson(result['data']);
  //     token.value = userData!.accessToken;
  //     saveUserData(
  //         email: body['email'].toString(), pass: body['password'].toString());
  //     setUserLoggedIn(true);
  //     // await getUserDetail(body, context, true);
  //     // await _baseController.getActiveUserJobs(context, 1, "auth");
  //     // await _baseController.getPostedUserJobs(context, 1);
  //     // await _baseController.getCompletedUserJobs(context, 1);
  //     if (userData!.user_type == 0) {
  //       Get.find<GeneralController>().onBottomBarTapped(0);
  //       Get.offAll(() => CustomBottomNavBar());
  //     } else {
  //       Get.find<GeneralController>().onBottomBarTapped(0);
  //       Get.offAll(() => CustomBottomNavBarWorker());
  //     }
  //     update();
  //   } else {
  //     fromSplash ? null : _generalController.hideLoading();
  //     if (result['message'].toString() == "Please Verify your account") {
  //       Get.to(() => VerifyEmail(
  //             email: body['email'].toString(),
  //           ));
  //     } else {
  //       _generalController.errorDialog(context, "Error", result['message']);
  //     }
  //     // return "false";
  //   }
  // }
  //
  // Future resetPassword(var body, BuildContext context) async {
  //   _generalController.showLoading('Sending OTP...');
  //
  //   var response = await DataApiService.instance
  //       .post('/reset-password', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   _generalController.hideLoading();
  //   var result = json.decode(response);
  //
  //   if (result['status'] == true) {
  //     await _generalController.successDialog(
  //         context, "Success", result['message']);
  //     Get.to(() => VerifyOtpReset(
  //           email: body['email'].toString(),
  //         ));
  //     update();
  //     return "true";
  //   } else {
  //     _generalController.errorDialog(context, "Error", result['message']);
  //     return "false";
  //   }
  // }
  //
  // Future verifyEmail(body, BuildContext context) async {
  //   _generalController.showLoading('Verifying OTP...');
  //
  //   var response = await DataApiService.instance
  //       .post('/verify-otp', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   _generalController.hideLoading();
  //   var result = json.decode(response);
  //
  //   if (result['status']) {
  //     await _generalController.successDialog(
  //         context, "Success", result['message']);
  //     update();
  //     Get.offAll(() => LoginScreen());
  //     return "true";
  //   } else {
  //     await _generalController.errorDialog(context, "Error", result['message']);
  //     // Get.offAll(() => LoginScreen());
  //     return "false";
  //   }
  // }
  //
  // Future verifyOTPReset(body, BuildContext context) async {
  //   _generalController.showLoading('Verifying OTP...');
  //
  //   var response = await DataApiService.instance
  //       .post('/verify-otp', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   _generalController.hideLoading();
  //   var result = json.decode(response);
  //
  //   if (result['status']) {
  //     await _generalController.successDialog(
  //         context, "Success", result['message']);
  //     update();
  //     Get.offAll(() => ResetPassword(
  //           email: body['email'].toString(),
  //         ));
  //     return "true";
  //   } else {
  //     await _generalController.errorDialog(context, "Error", result['message']);
  //     // Get.offAll(() => ResetPassword());
  //     return "false";
  //   }
  // }
  //
  // Future changePassword(body, BuildContext context) async {
  //   _generalController.showLoading('Changing Password...');
  //
  //   var response = await DataApiService.instance
  //       .post('/change-password', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   _generalController.hideLoading();
  //   var result = json.decode(response);
  //
  //   if (result['status'] == true) {
  //     await _generalController.successDialog(
  //         context, "Success", result['message']);
  //     update();
  //     Get.offAll(() => LoginScreen());
  //     return "true";
  //   } else {
  //     await _generalController.errorDialog(context, "Error", result['message']);
  //     // Get.offAll(() => ResetPassword());
  //     return "false";
  //   }
  // }
  //
  // Future editProfile(var body, BuildContext context, imageFile) async {
  //   _generalController.showLoading('Editing profile...');
  //   var response = await DataApiService.instance
  //       .multiPartPost('/edit-profile', imageFile, body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   var result = json.decode(response);
  //   if (result['status'] == true) {
  //     userData = UserModel.fromJson(result['data'][0]);
  //     _generalController.hideLoading();
  //     await _generalController.successDialog(
  //         context, "Success", result['message']);
  //     Get.find<GeneralController>().onBottomBarTapped(4);
  //     Get.to(() => CustomBottomNavBar());
  //     update();
  //     // Get.offAll(() => const CommonNavigationBar(index: 0));
  //     return "true";
  //   } else {
  //     _generalController.hideLoading();
  //     _generalController.errorDialog(context, "Error", result['message']);
  //     return "false";
  //   }
  // }
  //
  // Future getUserDetail(body, BuildContext context, bool fromLogin) async {
  //   // _baseController.showLoading('Updating User Info...');
  //   var response = await DataApiService.instance
  //       .post('/user-details', body)
  //       .catchError((error) {
  //     if (error is BadRequestException) {
  //       var apiError = json.decode(error.message!);
  //       CustomDialogBox.showErrorDialog(
  //           description: apiError["message"], context: context);
  //     } else {
  //       _generalController.handleError(error, context);
  //     }
  //   });
  //   if (response == null) return;
  //   var result = json.decode(response);
  //   if (result['status'] == true) {
  //     userData = UserModel.fromJson(result['data']);
  //     update();
  //     // Get.offAll(() => const CommonNavigationBar(index: 0));
  //     return "true";
  //   } else {
  //     _generalController.errorDialog(context, "Error", result['message']);
  //     return "false";
  //   }
  // }
  //
  // Future uploadProfileIMage(String inputSource) async {
  //   try {
  //     pickedImage = await picker.pickImage(
  //         source: inputSource == 'camera'
  //             ? ImageSource.camera
  //             : ImageSource.gallery,
  //         maxWidth: 1920);
  //
  //     uploadImageFile = File(pickedImage!.path);
  //     uploadImageUrl = pickedImage!.path;
  //   } catch (err) {
  //     Get.back();
  //     if (kDebugMode) {
  //       print(err);
  //     }
  //   }
  // }
}
