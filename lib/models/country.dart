part of appwrite;

class CountryModel {
    late final String name;
    late final String code;

    CountryModel({
        required this.name,
        required this.code,
    });

    factory CountryModel.fromMap(Map<String, dynamic> map) {
        return CountryModel(
            name: map['name'],
            code: map['code'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "code": code,
        };
    }
}

