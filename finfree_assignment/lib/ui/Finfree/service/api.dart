

import 'package:finfree_assignment/core/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'apibase.dart';

class API implements APIBase {
  var jsonResponse;

  @override
 Future getStockInfo() async{
   var _url = Uri.parse(ConstantClass.devAPIURL);
   var _response = await http.get(_url,headers: ConstantClass.headers);
   print(_response.body);
  }
}