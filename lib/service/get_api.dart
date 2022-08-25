import 'dart:convert';
import 'package:homework/model/api_model.dart';
import 'package:homework/utils/api_constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future postAPI(EMP_NO, Cell_Contact) async {
    try {
      var url = Uri.parse(APIConst.baseURL + APIConst.verifyPlayStoreApp);

      var responseString = await http.post(
        url,
        headers: {'ApiKey': APIConst.apiKey},
        body: {"EMP_NO": "$EMP_NO", "Cell_Contact": "$Cell_Contact"},
      );
      // var responseString = await http.get(url);

      var jsonData = await json.decode(responseString.body);

      // jsonData[0]['userId'];

      if (responseString.statusCode == 200 ||
          responseString.statusCode == 404) {
        print(jsonData['Status']);
        print(jsonData['FileName']);

        return jsonData;
        // final apiModel = apiModelFromJson(responseString.body);
        // return apiModel;
      } else {
        print("some error");
      }

      // print(responseString.statusCode);
      // print(jsonData);
    } catch (e) {
      print(e);
    }
  }
}
