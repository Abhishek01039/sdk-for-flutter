part of appwrite;

class ContinentListModel {
    late final int sum;
    late final List<ContinentModel> continents;

    ContinentListModel({
        required this.sum,
        required this.continents,
    });

    factory ContinentListModel.fromMap(Map<String, dynamic> map) {
        return ContinentListModel(
            sum: map['sum'],
            continents: List<ContinentModel>.from(map['continents'].map((p) => ContinentModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "continents": continents.map((p) => p.toMap()),
        };
    }
}

