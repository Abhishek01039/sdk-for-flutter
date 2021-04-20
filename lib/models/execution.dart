part of appwrite;

class ExecutionModel {
    late final String $id;
    late final String functionId;
    late final int dateCreated;
    late final String trigger;
    late final String status;
    late final int exitCode;
    late final String stdout;
    late final String stderr;
    late final double time;

    ExecutionModel({
        required this.$id,
        required this.functionId,
        required this.dateCreated,
        required this.trigger,
        required this.status,
        required this.exitCode,
        required this.stdout,
        required this.stderr,
        required this.time,
    });

    factory ExecutionModel.fromMap(Map<String, dynamic> map) {
        return ExecutionModel(
            $id: map['\$id'],
            functionId: map['functionId'],
            dateCreated: map['dateCreated'],
            trigger: map['trigger'],
            status: map['status'],
            exitCode: map['exitCode'],
            stdout: map['stdout'],
            stderr: map['stderr'],
            time: map['time'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "functionId": functionId,
            "dateCreated": dateCreated,
            "trigger": trigger,
            "status": status,
            "exitCode": exitCode,
            "stdout": stdout,
            "stderr": stderr,
            "time": time,
        };
    }
}

