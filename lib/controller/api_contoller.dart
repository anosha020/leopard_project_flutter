import 'package:flutter/material.dart';
import 'package:homework/service/get_api.dart';
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
      _showMyDialog(context, data);
    }
  }

  Future<void> _showMyDialog(context, data) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(data['Message']),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
