part of appwrite;

class DocumentModel {
    late final String $id;
    late final String $collection;
    late final PermissionsModel $permissions;

    DocumentModel({
        required this.$id,
        required this.$collection,
        required this.$permissions,
    });

    factory DocumentModel.fromMap(Map<String, dynamic> map) {
        return DocumentModel(
            $id: map['\$id'],
            $collection: map['\$collection'],
            $permissions: PermissionsModel.fromMap(map['\$permissions']),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$collection": $collection,
            "\$permissions": $permissions.toMap(),
        };
    }
}

