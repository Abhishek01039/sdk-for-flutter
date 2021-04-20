part of appwrite;

class PhoneModel {
    late final String code;
    late final String countryCode;
    late final String countryName;

    PhoneModel({
        required this.code,
        required this.countryCode,
        required this.countryName,
    });

    factory PhoneModel.fromMap(Map<String, dynamic> map) {
        return PhoneModel(
            code: map['code'],
            countryCode: map['countryCode'],
            countryName: map['countryName'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "code": code,
            "countryCode": countryCode,
            "countryName": countryName,
        };
    }
}

