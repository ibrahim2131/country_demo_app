import 'package:demo_zone/widgets/country_item/country_item_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/country_controller/country_controller.dart';
import '../../controllers/theme_controller/theme_controller.dart';


class CountryListPage extends StatelessWidget {
  final CountryController countryController = Get.put(CountryController());
  final ThemeController themeController = Get.find<ThemeController>();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Countries'),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode.value ? Icons.wb_sunny : Icons.nights_stay),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
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
                itemCount: countryController.filteredCountries.length + 1,
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
                          : const SizedBox.shrink();
                    });
                  }
                  return CountryItemV2(country: countryController.filteredCountries[index]);
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}