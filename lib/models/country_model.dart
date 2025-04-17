class Country {
  final String commonName;
  final String capital;
  final String currencyName;
  final String currencySymbol;
  final String language;
  final String flagUrl;
  final String flagSvg;
  final String googleMaps;
  final int population;
  Country({
    required this.commonName,
    required this.capital,
    required this.currencyName,
    required this.currencySymbol,
    required this.language,
    required this.flagUrl,
    required this.flagSvg,
    required this.googleMaps,
    required this.population,

  });

  /// fetch needed data only from API
  factory Country.fromJson(Map<String, dynamic> json) {
    final name = json['name']['common'];
    final capital = json['capital'] != null ? json['capital'][0] : 'N/A';
    final currency = json['currencies'] != null
        ? json['currencies'].values.first
        : {'name': 'N/A', 'symbol': 'N/A'};
    final language = json['languages'] != null
        ? json['languages'].values.first
        : 'N/A';
    final flagUrl = json['flags']['png'];
    final flagSvg = json['flags']['svg'];
    final googleMaps = json['maps']['googleMaps'] ?? 'N/A';
    final population = json['population'] ?? 0;

    return Country(
      commonName: name,
      capital: capital,
      currencyName: currency['name'],
      currencySymbol: currency['symbol'],
      language: language,
      flagUrl: flagUrl,
      flagSvg : flagSvg,
      googleMaps: googleMaps,
      population: population,
    );
  }
}