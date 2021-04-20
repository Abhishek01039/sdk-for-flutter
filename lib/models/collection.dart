part of appwrite;

class CollectionModel {
    late final String $id;
    late final PermissionsModel $permissions;
    late final String name;
    late final int dateCreated;
    late final int dateUpdated;
    late final List<RuleModel> rules;

    CollectionModel({
        required this.$id,
        required this.$permissions,
        required this.name,
        required this.dateCreated,
        required this.dateUpdated,
        required this.rules,
    });

    factory CollectionModel.fromMap(Map<String, dynamic> map) {
        return CollectionModel(
            $id: map['\$id'],
            $permissions: PermissionsModel.fromMap(map['\$permissions']),
            name: map['name'],
            dateCreated: map['dateCreated'],
            dateUpdated: map['dateUpdated'],
            rules: List<RuleModel>.from(map['rules'].map((p) => RuleModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$permissions": $permissions.toMap(),
            "name": name,
            "dateCreated": dateCreated,
            "dateUpdated": dateUpdated,
            "rules": rules.map((p) => p.toMap()),
        };
    }
}

