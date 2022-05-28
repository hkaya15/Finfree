import 'package:finfree_assignment/core/constants/constants.dart';
import 'package:finfree_assignment/ui/Finfree/model/priceentryinfo.dart';
import 'package:http/http.dart' as http;
import 'apibase.dart';
import 'dart:convert' as convert;

class API implements APIBase {
  // ignore: prefer_typing_uninitialized_variables
  var jsonResponse;

  @override
  Future<PriceEntryInfo> getStockInfo() async {
    var _url = Uri.parse(ConstantClass.devAPIURL);
    var _response = await http.get(_url, headers: ConstantClass.headers);

    if (_response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(_response.body) as Map<String, dynamic>;

     // debugPrint('$jsonResponse');
      return PriceEntryInfo.fromJson(jsonResponse);
    } 
     // debugPrint('Request failed with status: ${_response.statusCode}.');
      return PriceEntryInfo();
    
  }
}
