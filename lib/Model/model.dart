import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:know_our_school/Model/response.dart';

class Model {
  Future<Response> readJson() async {
    final String response =
    await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    final data = await json.decode(response);
    Response schoolResponse = Response.fromJson(data[0]);
    return schoolResponse;
  }
}