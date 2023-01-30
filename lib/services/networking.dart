import 'package:http/http.dart' as http; //http name is user defined

import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    //Response is a part of http package
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
      //return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
