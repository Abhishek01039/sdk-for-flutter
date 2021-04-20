part of appwrite;

class RuleModel {
    late final String $id;
    late final String $collection;
    late final String type;
    late final String key;
    late final String label;
    late final String xdefault;
    late final bool array;
    late final bool xrequired;
    late final List list;

    RuleModel({
        required this.$id,
        required this.$collection,
        required this.type,
        required this.key,
        required this.label,
        required this.xdefault,
        required this.array,
        required this.xrequired,
        required this.list,
    });

    factory RuleModel.fromMap(Map<String, dynamic> map) {
        return RuleModel(
            $id: map['\$id'],
            $collection: map['\$collection'],
            type: map['type'],
            key: map['key'],
            label: map['label'],
            xdefault: map['default'],
            array: map['array'],
            xrequired: map['required'],
            list: map['list'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$collection": $collection,
            "type": type,
            "key": key,
            "label": label,
            "default": xdefault,
            "array": array,
            "required": xrequired,
            "list": list,
        };
    }
}

