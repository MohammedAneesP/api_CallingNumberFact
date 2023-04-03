import 'dart:convert';
import 'package:api_calling/num_fact_class/num_fact_class.dart';
import 'package:http/http.dart' as http;

Future<NumFactClass> numFactResp({required String num}) async {
  final respo = await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final numRes = jsonDecode(respo.body);
  final responsed = NumFactClass.fromJson(numRes);
  return responsed;
}
