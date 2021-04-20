part of appwrite;

class SessionListModel {
    late final int sum;
    late final List<SessionModel> sessions;

    SessionListModel({
        required this.sum,
        required this.sessions,
    });

    factory SessionListModel.fromMap(Map<String, dynamic> map) {
        return SessionListModel(
            sum: map['sum'],
            sessions: List<SessionModel>.from(map['sessions'].map((p) => SessionModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "sessions": sessions.map((p) => p.toMap()),
        };
    }
}

