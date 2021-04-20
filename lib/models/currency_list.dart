part of appwrite;

class CurrencyListModel {
    late final int sum;
    late final List<CurrencyModel> currencies;

    CurrencyListModel({
        required this.sum,
        required this.currencies,
    });

    factory CurrencyListModel.fromMap(Map<String, dynamic> map) {
        return CurrencyListModel(
            sum: map['sum'],
            currencies: List<CurrencyModel>.from(map['currencies'].map((p) => CurrencyModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "currencies": currencies.map((p) => p.toMap()),
        };
    }
}

