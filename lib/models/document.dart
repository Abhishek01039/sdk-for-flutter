part of appwrite;

class DocumentModel {
  late final String $id;
  late final String $collection;
  late final PermissionsModel $permissions;
  late final Map<String, dynamic> data;
  DocumentModel({
    required this.$id,
    required this.$collection,
    required this.$permissions,
    required this.data,
  });

  factory DocumentModel.fromMap(Map<String, dynamic> map) {
    return DocumentModel(
      $id: map['\$id'],
      $collection: map['\$collection'],
      $permissions: PermissionsModel.fromMap(map['\$permissions']),
      data: map,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "\$collection": $collection,
      "\$permissions": $permissions.toMap(),
      "data": data,
    };
  }
}
