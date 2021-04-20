part of appwrite;

class FileListModel {
    late final int sum;
    late final List<FileModel> files;

    FileListModel({
        required this.sum,
        required this.files,
    });

    factory FileListModel.fromMap(Map<String, dynamic> map) {
        return FileListModel(
            sum: map['sum'],
            files: List<FileModel>.from(map['files'].map((p) => FileModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "files": files.map((p) => p.toMap()),
        };
    }
}

