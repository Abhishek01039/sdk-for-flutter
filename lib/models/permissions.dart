part of appwrite;

class PermissionsModel {
    late final List read;
    late final List write;

    PermissionsModel({
        required this.read,
        required this.write,
    });

    factory PermissionsModel.fromMap(Map<String, dynamic> map) {
        return PermissionsModel(
            read: map['read'],
            write: map['write'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "read": read,
            "write": write,
        };
    }
}

