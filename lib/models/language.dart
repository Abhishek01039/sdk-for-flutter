part of appwrite;

class LanguageModel {
    late final String name;
    late final String code;
    late final String nativeName;

    LanguageModel({
        required this.name,
        required this.code,
        required this.nativeName,
    });

    factory LanguageModel.fromMap(Map<String, dynamic> map) {
        return LanguageModel(
            name: map['name'],
            code: map['code'],
            nativeName: map['nativeName'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "name": name,
            "code": code,
            "nativeName": nativeName,
        };
    }
}

