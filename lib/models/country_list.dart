part of appwrite;

class CountryListModel {
    late final int sum;
    late final List<CountryModel> countries;

    CountryListModel({
        required this.sum,
        required this.countries,
    });

    factory CountryListModel.fromMap(Map<String, dynamic> map) {
        return CountryListModel(
            sum: map['sum'],
            countries: List<CountryModel>.from(map['countries'].map((p) => CountryModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "countries": countries.map((p) => p.toMap()),
        };
    }
}

