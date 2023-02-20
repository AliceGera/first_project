import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../request/models/post.dart';
import '../models/galaxy.dart';
import '../models/missions.dart';
import 'package:dio/dio.dart';

const String SERVER = "https://jsonplaceholder.typicode.com";

class Repository {
  Future<List<Post>?> fetchPosts() async {
    Dio dio = Dio();
    dio.options.baseUrl = "$SERVER";
    dio.options.responseType = ResponseType.json;
    dio.options.connectTimeout = 5000;
    //dio.interceptors.add(LogInterceptor(responseBody:true));
    //dio.options.add(LogInterceptor());
    Response response = await dio.get('/posts');
    if (response.statusCode == 200) {
      final postList = response.data as List?;
      final decodedList = postList?.map((e) => Post.fromJson(e)).toList();
      return decodedList;
    } else {
      throw Exception("failed request");
    }
    // final url = Uri.parse("$SERVER/posts");
    // final response = await http.get(url);
    // if (response.statusCode == 200) {
    //   final postList = json.decode(response.body) as List?;
    //   final decodedList = postList?.map((e) => Post.fromJson(e)).toList();
    //   return decodedList;
    // } else {
    //   throw Exception("failed request");
    // }
  }

  Future<List<Galaxy>?> getGalaxies() async {
    const String body = """ 
      { "data": [
        {
          "id": 1,
          "title": "Galaxy 1",
          "image": "image1",
          "unlocked": true,
          "lesson_groups": [
            {
              "id": 1,
              "title": "Different Styles of Trading 1",
              "image": "planetImage1",
              "unlocked": true,
              "day": 10,
              "coins_to_unlock": 12,
              "is_premium_content": true,
              "is_certificated_day": false,
              "current_learning_day": true,
              "unlock_date": "2021-01-28T13:21:35.000000Z",
              "lessons": [
                {
                  "id": 4,
                  "title": "Different Styles of Trading 4",
                  "description": "Different Styles of Trading 4 description",
                  "unlocked": true,
                  "day": 10,
                  "status": "unwatched",
                  "lessonGroupTitle": "Different Styles of Trading 4"
                }
              ]
            },
             {
              "id": 2,
              "title": "Different Styles of Trading 2",
              "image": "planetImage2",
              "unlocked": true,
              "day": 10,
              "coins_to_unlock": 12,
              "is_premium_content": true,
              "is_certificated_day": false,
              "current_learning_day": true,
              "unlock_date": "2021-01-28T13:21:35.000000Z"
            },
             {
              "id": 3,
              "title": "Different Styles of Trading 3",
              "image": "planetImage3",
              "unlocked": true,
              "day": 10,
              "coins_to_unlock": 12,
              "is_premium_content": true,
              "is_certificated_day": false,
              "current_learning_day": true,
              "unlock_date": "2021-01-28T13:21:35.000000Z"
            }
          ]
        },
         {
          "id": 2,
          "title": "Galaxy 2",
          "image": "image2",
          "unlocked": true,
          "lesson_groups": [
            {
              "id": 4,
              "title": "Different Styles of Trading 4",
              "image": "planetImage4",
              "unlocked": true,
              "day": 10,
              "coins_to_unlock": 12,
              "is_premium_content": true,
              "is_certificated_day": false,
              "current_learning_day": true,
              "unlock_date": "2021-01-28T13:21:35.000000Z",
              "lessons": [
                {
                  "id": 4,
                  "title": "Different Styles of Trading 4",
                  "description": "Different Styles of Trading 4 description",
                  "unlocked": true,
                  "day": 10,
                  "status": "unwatched",
                  "lessonGroupTitle": "Different Styles of Trading 4"
                }
              ]
            }
          ]
        }
      ]
      }
      """;
    final data = json.decode(body) as Map?;
    final List? dataList = data?['data'];
    final galaxyList = dataList
        ?.map(
          (e) => Galaxy.fromJson(e),
        )
        .toList();
    return galaxyList;
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
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map?;
      final List? dataList = data?['data'];
      final List<Missions>? missionsList = dataList
          ?.map(
            (e) => Missions.fromJson(e),
          )
          .toList();
      return missionsList;
    } else {
      return null;
    }
  }
}
