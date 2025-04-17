import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/country_model.dart';

class ApiService {
  final String baseUrl = 'https://restcountries.com/v3.1/all'; // Public API that gives the names of countries and information about those countries

  Future<List<Country>> fetchCountries() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((country) => Country.fromJson(country)).toList();
    } else {
      throw Exception('Failed to load countries');
    }
  }
}