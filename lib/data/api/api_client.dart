import 'dart:convert';
import 'dart:io';

import 'package:first_project/data/model/api_exceprion.dart';
import 'package:first_project/data/model/no_internet_exception.dart';

enum HttpMethod { get, post, put, delete }

class HttpRequestExecutor {
  final HttpClient client;

  HttpRequestExecutor(this.client);

  Future<Map<String, dynamic>> executeRequest(
    HttpMethod method,
    Uri uri,
    Map<String, dynamic>? body,
  ) async {
    final HttpClientRequest request;

    try {
      switch (method) {
        case HttpMethod.get:
          request = await client.getUrl(uri);
          break;
        case HttpMethod.post:
          request = await client.postUrl(uri);
          break;
        case HttpMethod.put:
          request = await client.putUrl(uri);
          break;
        case HttpMethod.delete:
          request = await client.deleteUrl(uri);
          break;
      }
    } on SocketException catch (_) {
      throw NoInternetException();
    }

    request.headers
      ..contentType = ContentType.json
      ..set(HttpHeaders.acceptHeader, 'application/json');

    const token = '5835|RT18XM8xSDSaIMKntdtZU4NsxF0YW2Jn9rORzQAX';
    print(
        'HTTP here: --> ${request.method} ${request.uri.toString()} ${request.headers}');

    request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $token');

    if (body != null) {
      final json = jsonEncode(body);
      print('HTTP: --> $json');
      request.write(json);
    }

    final response = await request.close();
    final json = await utf8.decodeStream(response);
    final map = jsonDecode(json) as Map<String, dynamic>;

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return map;
    } else if (response.statusCode == 401 || response.statusCode == 403) {
      //todo redirect
      return <String, dynamic>{};
    } else {
      String? message;
      final dynamic errors = map['errors'];
      final detail = map['detail'] as String?;

      switch (response.statusCode) {
        case 500:
          message = detail;
          break;
        case 404:
          message = detail;
          break;
        case 422:
          message = detail;
          break;
        default:
          if (errors is Map<String, dynamic>) {
            message = errors.values.first[0] as String?;
          }
          break;
      }

      final error = ApiException(message ?? '');

      print('HTTP: <-- $error)');
      print('HTTP: <-- $map)');

      throw error;
    }
  }
}
