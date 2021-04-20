part of appwrite;

class LogListModel {
    late final List<LogModel> logs;

    LogListModel({
        required this.logs,
    });

    factory LogListModel.fromMap(Map<String, dynamic> map) {
        return LogListModel(
            logs: List<LogModel>.from(map['logs'].map((p) => LogModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "logs": logs.map((p) => p.toMap()),
        };
    }
}

