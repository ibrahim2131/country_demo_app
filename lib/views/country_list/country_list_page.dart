import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/country_controller.dart';
import '../../widgets/country_item/country_item.dart';

class CountryListPage extends StatelessWidget {
  final CountryController countryController = Get.put(CountryController());
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search Countries',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {
                countryController.filterCountries(value);
              },
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: countryController.filteredCountries.length + 1, // +1 for the loading indicator
                itemBuilder: (context, index) {
                  if (index == countryController.filteredCountries.length) {
                    return Obx(() {
                      return countryController.isLoading.value
                          ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(50.0),
                              child: CircularProgressIndicator(),
                            ),
                          )
                          : const SizedBox.shrink(); // Empty space when not loading
                    });
                  }
                  return CountryItem(country: countryController.filteredCountries[index]);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}