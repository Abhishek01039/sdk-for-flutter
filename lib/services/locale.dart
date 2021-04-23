part of appwrite;


class Locale extends Service {
    Locale(Client client): super(client);

     /// Get User Locale
     ///
     /// Get the current user location based on IP. Returns an object with user
     /// country code, country name, continent name, continent code, ip address and
     /// suggested currency. You can use the locale header to get the data in a
     /// supported language.
     /// 
     /// ([IP Geolocation by DB-IP](https://db-ip.com))
     ///
     Future<LocaleModel> get() async {
        final String path = '/locale';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return LocaleModel.fromMap(res.data);
    }

     /// List Continents
     ///
     /// List of all continents. You can use the locale header to get the data in a
     /// supported language.
     ///
     Future<ContinentListModel> getContinents() async {
        final String path = '/locale/continents';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return ContinentListModel.fromMap(res.data);
    }

     /// List Countries
     ///
     /// List of all countries. You can use the locale header to get the data in a
     /// supported language.
     ///
     Future<CountryListModel> getCountries() async {
        final String path = '/locale/countries';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return CountryListModel.fromMap(res.data);
    }

     /// List EU Countries
     ///
     /// List of all countries that are currently members of the EU. You can use the
     /// locale header to get the data in a supported language.
     ///
     Future<CountryListModel> getCountriesEU() async {
        final String path = '/locale/countries/eu';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return CountryListModel.fromMap(res.data);
    }

     /// List Countries Phone Codes
     ///
     /// List of all countries phone codes. You can use the locale header to get the
     /// data in a supported language.
     ///
     Future<PhoneListModel> getCountriesPhones() async {
        final String path = '/locale/countries/phones';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return PhoneListModel.fromMap(res.data);
    }

     /// List Currencies
     ///
     /// List of all currencies, including currency symbol, name, plural, and
     /// decimal digits for all major and minor currencies. You can use the locale
     /// header to get the data in a supported language.
     ///
     Future<CurrencyListModel> getCurrencies() async {
        final String path = '/locale/currencies';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return CurrencyListModel.fromMap(res.data);
    }

     /// List Languages
     ///
     /// List of all languages classified by ISO 639-1 including 2-letter code, name
     /// in English, and name in the respective language.
     ///
     Future<LanguageListModel> getLanguages() async {
        final String path = '/locale/languages';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return LanguageListModel.fromMap(res.data);
    }
}