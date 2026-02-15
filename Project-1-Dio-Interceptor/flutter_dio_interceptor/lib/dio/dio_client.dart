import 'dart:developer';
import 'package:dio/dio.dart';

class DioClient {
  final Dio dio = Dio();
  static const baseUrl = "";
  static const postsEndpoint = "$baseUrl/posts";

  Future<void> fetchPost(int postId) async {
    try{
      final response = await dio.get(postsEndpoint + postId.toString());
      log(response.toString());
      // from here we have to return the post.fromJson(response.data);
    } catch(e){
      log(e.toString());
    }
  }
}