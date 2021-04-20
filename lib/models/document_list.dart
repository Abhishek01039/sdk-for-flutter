part of appwrite;

class DocumentListModel {
    late final int sum;
    late final List<DocumentModel> documents;

    DocumentListModel({
        required this.sum,
        required this.documents,
    });

    factory DocumentListModel.fromMap(Map<String, dynamic> map) {
        return DocumentListModel(
            sum: map['sum'],
            documents: List<DocumentModel>.from(map['documents'].map((p) => DocumentModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "documents": documents.map((p) => p.toMap()),
        };
    }
}

