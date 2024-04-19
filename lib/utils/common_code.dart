import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonCode {
  // Future<bool> isNetworkAvailable() async {
  //   var connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     return true;
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     return true;
  //   }
  //   return false;
  // }
  //
  // Future<bool> checkInternetAccess() async {
  //   ResponseModel response = await getRequestWithOutHeader(url: "https://www.google.com/");
  //   if (response.statusCode != 400 && response.statusCode != 408 && response.statusCode != 500) {
  //     return await isNetworkAvailable() && true;
  //   }
  //   return await isNetworkAvailable() && false;
  // }
  //
  // Future<ResponseModel> getRequestWithOutHeader({required String url}) async {
  //   try {
  //     http.Response response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 30));
  //     ResponseModel responseModel = ResponseModel();
  //     if (response != null && response.body != null && response.body.length > 4) {
  //       responseModel.statusCode = response.statusCode;
  //       responseModel.statusDescription = "Success";
  //       responseModel.data = response.body;
  //     }
  //
  //     return responseModel;
  //   } on TimeoutException catch (e) {
  //     return Future.value(ResponseModel.named(statusCode: 408, statusDescription: "Request TimeOut", data: ""));
  //   } on SocketException catch (e) {
  //     return Future.value(ResponseModel.named(statusCode: 400, statusDescription: "Bad Request", data: ""));
  //   } catch (_) {
  //     return Future.value(ResponseModel.named(statusCode: 500, statusDescription: "Server Error", data: ""));
  //   }
  // }

  bool removeTextFieldFocus() {
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
      return true;
    }
    return false;
  }

  static bool isValidEmail(String email) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    print('=====================is email valid $emailValid');
    return emailValid;
  }

  bool isValidPhone(
    String? inputString, {
    bool isRequired = false,
  }) {
    bool isInputStringValid = false;

    if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
      isInputStringValid = true;
    }

    if (inputString != null && inputString.isNotEmpty) {
      if (inputString.length > 16 || inputString.length < 6) return false;

      const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';

      final regExp = RegExp(pattern);

      isInputStringValid = regExp.hasMatch(inputString);
    }

    return isInputStringValid;
  }
}
