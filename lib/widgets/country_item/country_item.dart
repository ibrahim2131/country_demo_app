import 'package:flutter/material.dart';
import '../../models/country_model.dart';
import '../../views/country_details/country_details_page.dart';

class CountryItem extends StatelessWidget {
  final Country country;

  CountryItem({required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Card(
        elevation: 4, // Add shadow for depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16.0), // Padding inside the ListTile
          title: Text(
            country.commonName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Capital: ${country.capital}', // Additional information
           /* style: TextStyle(
              color: Colors.grey[600], // Secondary text color
            ),*/
          ),
          leading: ClipOval(
            child: Image.network(
              country.flagUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CountryDetailPage(country: country)),
            );
          },
        ),
      ),
    );
  }
}