import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../request/models/post.dart';
import '../models/galaxy.dart';
import '../models/missions.dart';

const String SERVER = "https://jsonplaceholder.typicode.com";

class Repository {

  Future<List<Post>?> fetchPosts() async {
    final url = Uri.parse("$SERVER/posts");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final postList = json.decode(response.body) as List?;
      final decodedList = postList?.map((e) => Post.fromJson(e)).toList();
      return decodedList;
    } else {
      throw Exception("failed request");
    }
  }

  Future<List<Galaxy>?> getGalaxy() async {
    final url = Uri.parse("https://api.dev.blockper.io/categories");
    const token = '5835|RT18XM8xSDSaIMKntdtZU4NsxF0YW2Jn9rORzQAX';
    final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        "accept": "application/json,",
        "authorization": "Bearer $token",
        "user-agent": "BlockperEngine/(1.0) (blockper.io)",
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map?;
      final List? dataList = data?['data'];
      final List<Galaxy>? galaxyList = dataList?.map(
            (e) => Galaxy.fromJson(e),
          )
          .toList();
      return galaxyList;
    } else {
      print(1111111);
      print(response.body);
      return null;
    }
  }

  Future<List<Missions>?> getMissions() async {
    final url = Uri.parse("https://api.dev.blockper.io/missions");
    const token = 'Bearer 6088|ScvHRHPPhekbJCsIhGBoUMbkalbDZGqYruvPdHw3';
    final response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        "accept": "application/json,",
        "authorization": "Bearer $token",
        "user-agent": "BlockperEngine/(1.0) (blockper.io)",
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map?;
      final List? dataList = data?['data'];
      final List<Missions>? missionsList = dataList?.map(
            (e) => Missions.fromJson(e),
      )
          .toList();
      return missionsList;
    } else {
      print(1111111);
      print(response.body);
      return null;
    }
  }
}
