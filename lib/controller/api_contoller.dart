import 'package:flutter/material.dart';
import 'package:homework/service/get_api.dart';
import 'package:homework/utils/app_constants.dart';
import 'package:homework/view/forth.dart';
import 'package:homework/view/third.dart';

class ControllerClass {
  postApiFunc(context, EMP_NO, Cell_Contact) async {
    var data = await ApiService().postAPI(EMP_NO, Cell_Contact);

    if (data['Status'] == 200 && data.toString().contains('LinkToPlaystore')) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Fourth()));
    } else if (data['Status'] == 200 && data.toString().contains('Navigate')) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Third()));
    } else {
      AppConstants().showMyDialog(
        context,
        'Alert',
        data['Message'],
        'Okay',
        () {
          Navigator.of(context).pop();
        },
      );
    }
  }
}
