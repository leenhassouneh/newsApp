import 'dart:convert';

import 'package:api_example/constant/my_url.dart';
import 'package:api_example/models/login_user.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  static void LoginUserFromApi() async {
    //بحط فيها الإند بوينت الي بدي أستخدمها
    //وعملنا كاستينج مشان مكتبه ال HTTP ما بتاخذ سترينج بتاخذ ك URI
    var myurl = Uri.parse(LOGIN);
    //عرفنا متغير و هذا المتغير فيه القيم الراجعة من HTTP
    //و هذا المتغير بستفيد منه ب خاصيتين الي هم statuscode و ال body .

    var res = await http
        .post(myurl, body: {"username": "kminchelle", "password": "0lelplR"});
    //بهاي الحالة بترجعلي ماب مو سترينج
    if (res.statusCode == 200) {
      print(jsonDecode(res.body));
    }

    //في حال بدي اطبع اليوزرنيم مثلا
    Map<String, dynamic> myMap = jsonDecode(res.body);

    //بس انا بدي اقعد اعمل برينت لكل key في الماب ؟ هاي مش حياة زوجية ف بروح بعمل
    //دايريكتوري اسمو موديلز و بعمل كوبي لشكل البيانات الي بتيجي من ال api من ال postman
    var myModel = LoginUser.fromJson(myMap);

  }



  static Future<Map<String,dynamic>> getDataFromApi({required String LINK}) async
  {
   try{
     var myURL=Uri.parse(LINK);
     var res = await http.get(myURL);
     if(res.statusCode==200){
       Map<String,dynamic> myGetMap=(jsonDecode(res.body));
       return myGetMap;

     }else{
       return {};
     }
   }catch(Error){
     throw("Error is ${Error.toString()}");
   }



  }
}
