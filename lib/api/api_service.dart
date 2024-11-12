import 'package:dio/dio.dart';
import 'package:todo_list/models/checklist.dart';
import 'package:todo_list/models/register_dto.dart';
import 'package:todo_list/utils/storage.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = "http://94.74.86.174:8080/api";
  final Storage storage = Storage();

  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await _dio.post(
        '$baseUrl/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      print('Error: $e');
      return {};
    }
  }

  Future<RegisterDto?> register(String, email, String username, String password) async {
    try {
      final response = await _dio.post(
        '$baseUrl/register',
        data: {
          'email': email,
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Register failed');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<List<Checklist>> getChecklist() async {
    try {
      final response = await _dio.get(
        '$baseUrl/checklist',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${storage.getToken()}',
          },
        ),
      );
      
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception("Failed to load checklist");
      }
    } catch (e) {
      print("Error: $e");
      return [];
    }
  }
}