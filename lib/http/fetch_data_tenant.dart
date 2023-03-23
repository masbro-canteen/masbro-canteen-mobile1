import 'dart:convert';
// import 'dart:js_util';

import 'package:testgetdata/model/tenant_foods.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

// const String uri = 'http://192.168.1.36:8000/api/tenant/1';

Future<TenantFoods> fetchTenantFoods(String uri) async {

  final response = await http.get(Uri.parse(uri));

  if(response.statusCode == 200){
    return TenantFoods.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Data cant be load');
  }
}