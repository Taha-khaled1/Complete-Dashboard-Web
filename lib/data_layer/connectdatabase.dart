// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:dashboard/application_layer/sherdfunction/checkenternet.dart';
import 'package:dashboard/application_layer/sherdfunction/statusrequst.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:path/path.dart';

String _basicAuth = 'Basic ${base64Encode(utf8.encode('wael:wael1'))}';

Map<String, String> myheaders = {'authorization': _basicAuth};

class Curd {
  getrequest(String url) async {
    try {
      Response respos = await http.get(Uri.parse(url));
      if (respos.statusCode == 200) {
        dynamic body = jsonDecode(respos.body);
        return body;
      } else {}
    } catch (e) {
      // ignore: avoid_print
      print('$e');
    }
  }

  postrequest(String url, Map data) async {
    try {
      if (await checkInternet()) {
        var respos =
            await http.post(Uri.parse(url), body: data, headers: myheaders);
        if (respos.statusCode == 200) {
          dynamic body = jsonDecode(respos.body);

          return body;
        } else {
          return StatusRequest.serverfailure;
        }
      } else {
        return StatusRequest.offlinefailure;
      }
    } catch (e) {
      return StatusRequest.serverfailure;
    }
  }

  strequestforFile(
    String url,
    namepost,
    Map data,
    File file,
  ) async {
    MultipartRequest requst = http.MultipartRequest('Post', Uri.parse(url));
    int length = await file.length();
    ByteStream stream = http.ByteStream(file.openRead());
    MultipartFile multefile = http.MultipartFile(namepost, stream, length,
        filename: basename(file.path));
    requst.headers.addAll(myheaders);
    requst.files.add(multefile);
    data.forEach((key, value) {
      requst.fields[key] = value.toString();
    });
    StreamedResponse myrequest = await requst.send();
    Response response = await http.Response.fromStream(myrequest);
    if (myrequest.statusCode == 200) {
      return jsonDecode(response.body);
    }
  }
}
