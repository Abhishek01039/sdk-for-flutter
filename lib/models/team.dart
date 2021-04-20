part of appwrite;

class TeamModel {
    late final String $id;
    late final String name;
    late final int dateCreated;
    late final int sum;

    TeamModel({
        required this.$id,
        required this.name,
        required this.dateCreated,
        required this.sum,
    });

    factory TeamModel.fromMap(Map<String, dynamic> map) {
        return TeamModel(
            $id: map['\$id'],
            name: map['name'],
            dateCreated: map['dateCreated'],
            sum: map['sum'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "dateCreated": dateCreated,
            "sum": sum,
        };
    }
}

