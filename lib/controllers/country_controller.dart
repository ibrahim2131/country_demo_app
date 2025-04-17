import 'package:get/get.dart';
import '../models/country_model.dart';
import '../services/api_service.dart';

class CountryController extends GetxController {
  final ApiService apiService = ApiService();
  var countries = <Country>[].obs; // New observable list for all countries
  var filteredCountries = <Country>[].obs; // New observable list for filtered countries (to use search)
  var isLoading = false.obs;


  @override
  void onInit() {
    fetchCountries();
    super.onInit();
  }

  Future<void> fetchCountries() async {
    if (isLoading.value) return; // Prevent multiple requests
    isLoading.value = true;

    try {
      var fetchedCountries = await apiService.fetchCountries();
      countries.addAll(fetchedCountries);
      filteredCountries.addAll(fetchedCountries); // Initialize filtered list
    } catch (e) {
      // Handle error
      print(e);
    } finally {
      isLoading.value = false; // to close loading spinner
    }
  }

  void filterCountries(String query) {
    if (query.isEmpty) {
      filteredCountries.assignAll(countries); // Show all countries if the search query is empty
    } else {
      filteredCountries.assignAll(countries.where((country) => country.commonName.toLowerCase().contains(query.toLowerCase())));
    }
  }
}