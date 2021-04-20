part of appwrite;

class TagModel {
    late final String $id;
    late final String functionId;
    late final int dateCreated;
    late final String command;
    late final String size;

    TagModel({
        required this.$id,
        required this.functionId,
        required this.dateCreated,
        required this.command,
        required this.size,
    });

    factory TagModel.fromMap(Map<String, dynamic> map) {
        return TagModel(
            $id: map['\$id'],
            functionId: map['functionId'],
            dateCreated: map['dateCreated'],
            command: map['command'],
            size: map['size'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "functionId": functionId,
            "dateCreated": dateCreated,
            "command": command,
            "size": size,
        };
    }
}

