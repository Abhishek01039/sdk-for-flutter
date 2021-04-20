part of appwrite;

class ContinentModel {
    late final String name;
    late final String code;

    ContinentModel({
        required this.name,
        required this.code,
    });

    factory ContinentModel.fromMap(Map<String, dynamic> map) {
        return ContinentModel(
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

