import 'package:flutter/material.dart';
import '../../models/country_model.dart';

class CountryDetailPage extends StatelessWidget {
  final Country country;

  CountryDetailPage({required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.commonName),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.grey[100], // Light background color
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the flag
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(country.flagUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Common Name
              Card(
                elevation: 4,
                child: ListTile(
                  title: const Text(
                    'Country Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(country.commonName),
                ),
              ),
              SizedBox(height: 10),
              // Capital
              Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    'Capital',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(country.capital),
                ),
              ),
              SizedBox(height: 10),
              // Currency
              Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    'Currency',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('${country.currencyName} (${country.currencySymbol})'),
                ),
              ),
              SizedBox(height: 10),
              // Language
              Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    'Language',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(country.language),
                ),
              ),
              SizedBox(height: 10),
              // Population
              Card(
                elevation: 4,
                child: ListTile(
                  title: Text(
                    'Population',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('${country.population}'),
                ),
              ),
              SizedBox(height: 20),
              // Google Maps Link

            ],
          ),
        ),
      ),
    );
  }
}