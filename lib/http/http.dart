// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';

class MyHttp {
  MyHttp._();

  static const _url =
      "https://corretora.veplex.com.br/lib/jaguar/AjaxIframe.php";

  static Map<String, String> _bHeaders([String accessToken = '']) {
    return {
      "Content-Type": "application/json; charset=utf-8",
      HttpHeaders.authorizationHeader: accessToken,
    };
  }

  static Future<Map<String, dynamic>> get(
    String route, [
    Map<String, dynamic> param = const {},
    String accessToken = '',
  ]) async {
    String body = '';

    try {
      Uri uri = Uri.parse(_url + route);
      uri = uri.replace(
          queryParameters:
              param.map((key, value) => MapEntry(key, value.toString())));

      http.Response response = await http
          .get(uri, headers: _bHeaders(accessToken))
          .timeout(const Duration(seconds: 20));

      body = response.body;

      if (body.isEmpty) {
        throw Exception('body.isEmpty');
      }

      try {
        final decoded = json.decode(body);
        _logResponse(route, body, param: param);

        return {
          'status': response.statusCode,
          'dados': decoded,
        };
      } catch (err) {
        if (kDebugMode) {
          print(err);
        }

        throw Exception('json.decode');
      }
    } catch (err) {
      _logResponse(route, body, param: param, error: err);
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> post(
    String route,
    Map<String, dynamic> param, [
    String accessToken = '',
  ]) async {
    Uri uri = Uri.parse(_url + route);
    String body = '';

    try {
      http.Response response = await http
          .post(uri, body: json.encode(param), headers: _bHeaders(accessToken))
          .timeout(const Duration(seconds: 20));

      body = response.body;

      if (body.isEmpty) {
        throw Exception('body.isEmpty');
      }

      try {
        final decoded = json.decode(body);
        _logResponse(route, body, param: param);

        return {
          'status': response.statusCode,
          'dados': decoded,
        };
      } catch (err) {
        if (kDebugMode) {
          print(err);
        }

        throw Exception('json.decode');
      }
    } catch (err) {
      _logResponse(route, body, param: param, error: err);
      rethrow;
    }
  }

  static void _logResponse(
    String route,
    String body, {
    Map<String, dynamic>? param,
    Object? error,
  }) {
    String message = 'Route: ' + _url + route + '\n';
    if (param != null) {
      message += 'Param: ' + param.toString() + '\n';
    }

    message += 'Body: ' + body + '\n';

    if (error != null) {
      message += 'Error: ' + error.toString() + '\n';
    }

    if (kDebugMode) {
      log(message);
    }
  }
}
