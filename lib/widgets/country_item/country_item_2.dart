import 'package:flutter/material.dart';

import '../../models/country_model.dart';
import '../../views/country_details/country_details_page.dart';
class CountryItemV2 extends StatelessWidget {
  final Country country;

  CountryItemV2({required this.country});

  @override
  Widget build(BuildContext context) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(country.flagUrl), // Assuming you have a flag URL
      radius: 30,
    ),
    title: Text(
      country.commonName,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      country.capital, // You can customize this
      style: TextStyle(color: Colors.grey),
    ),

    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CountryDetailPage(country: country)),
      );
    },
  );
}
  }
