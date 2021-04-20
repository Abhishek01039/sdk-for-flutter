part of appwrite;

class FileModel {
    late final String $id;
    late final PermissionsModel $permissions;
    late final String name;
    late final int dateCreated;
    late final String signature;
    late final String mimeType;
    late final int sizeOriginal;

    FileModel({
        required this.$id,
        required this.$permissions,
        required this.name,
        required this.dateCreated,
        required this.signature,
        required this.mimeType,
        required this.sizeOriginal,
    });

    factory FileModel.fromMap(Map<String, dynamic> map) {
        return FileModel(
            $id: map['\$id'],
            $permissions: PermissionsModel.fromMap(map['\$permissions']),
            name: map['name'],
            dateCreated: map['dateCreated'],
            signature: map['signature'],
            mimeType: map['mimeType'],
            sizeOriginal: map['sizeOriginal'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$permissions": $permissions.toMap(),
            "name": name,
            "dateCreated": dateCreated,
            "signature": signature,
            "mimeType": mimeType,
            "sizeOriginal": sizeOriginal,
        };
    }
}

