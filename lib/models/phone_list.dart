part of appwrite;

class PhoneListModel {
    late final int sum;
    late final List<PhoneModel> phones;

    PhoneListModel({
        required this.sum,
        required this.phones,
    });

    factory PhoneListModel.fromMap(Map<String, dynamic> map) {
        return PhoneListModel(
            sum: map['sum'],
            phones: List<PhoneModel>.from(map['phones'].map((p) => PhoneModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "phones": phones.map((p) => p.toMap()),
        };
    }
}

