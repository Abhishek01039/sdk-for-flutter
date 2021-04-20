part of appwrite;

class LanguageListModel {
    late final int sum;
    late final List<LanguageModel> languages;

    LanguageListModel({
        required this.sum,
        required this.languages,
    });

    factory LanguageListModel.fromMap(Map<String, dynamic> map) {
        return LanguageListModel(
            sum: map['sum'],
            languages: List<LanguageModel>.from(map['languages'].map((p) => LanguageModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "languages": languages.map((p) => p.toMap()),
        };
    }
}

