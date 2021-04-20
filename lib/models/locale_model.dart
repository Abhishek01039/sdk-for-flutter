part of appwrite;

class LocaleModelModel {
    late final String ip;
    late final String countryCode;
    late final String country;
    late final String continentCode;
    late final String continent;
    late final bool eu;
    late final String currency;

    LocaleModelModel({
        required this.ip,
        required this.countryCode,
        required this.country,
        required this.continentCode,
        required this.continent,
        required this.eu,
        required this.currency,
    });

    factory LocaleModelModel.fromMap(Map<String, dynamic> map) {
        return LocaleModelModel(
            ip: map['ip'],
            countryCode: map['countryCode'],
            country: map['country'],
            continentCode: map['continentCode'],
            continent: map['continent'],
            eu: map['eu'],
            currency: map['currency'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "ip": ip,
            "countryCode": countryCode,
            "country": country,
            "continentCode": continentCode,
            "continent": continent,
            "eu": eu,
            "currency": currency,
        };
    }
}

