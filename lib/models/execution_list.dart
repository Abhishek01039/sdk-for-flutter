part of appwrite;

class ExecutionListModel {
    late final int sum;
    late final List<ExecutionModel> executions;

    ExecutionListModel({
        required this.sum,
        required this.executions,
    });

    factory ExecutionListModel.fromMap(Map<String, dynamic> map) {
        return ExecutionListModel(
            sum: map['sum'],
            executions: List<ExecutionModel>.from(map['executions'].map((p) => ExecutionModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "executions": executions.map((p) => p.toMap()),
        };
    }
}

