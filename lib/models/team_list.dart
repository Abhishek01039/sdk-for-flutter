part of appwrite;

class TeamListModel {
    late final int sum;
    late final List<TeamModel> teams;

    TeamListModel({
        required this.sum,
        required this.teams,
    });

    factory TeamListModel.fromMap(Map<String, dynamic> map) {
        return TeamListModel(
            sum: map['sum'],
            teams: List<TeamModel>.from(map['teams'].map((p) => TeamModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "teams": teams.map((p) => p.toMap()),
        };
    }
}

