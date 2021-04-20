part of appwrite;

class FunctionModel {
    late final String $id;
    late final PermissionsModel $permissions;
    late final String name;
    late final int dateCreated;
    late final int dateUpdated;
    late final String status;
    late final String env;
    late final String tag;
    late final String vars;
    late final List events;
    late final String schedule;
    late final int scheduleNext;
    late final int schedulePrevious;
    late final int timeout;

    FunctionModel({
        required this.$id,
        required this.$permissions,
        required this.name,
        required this.dateCreated,
        required this.dateUpdated,
        required this.status,
        required this.env,
        required this.tag,
        required this.vars,
        required this.events,
        required this.schedule,
        required this.scheduleNext,
        required this.schedulePrevious,
        required this.timeout,
    });

    factory FunctionModel.fromMap(Map<String, dynamic> map) {
        return FunctionModel(
            $id: map['\$id'],
            $permissions: PermissionsModel.fromMap(map['\$permissions']),
            name: map['name'],
            dateCreated: map['dateCreated'],
            dateUpdated: map['dateUpdated'],
            status: map['status'],
            env: map['env'],
            tag: map['tag'],
            vars: map['vars'],
            events: map['events'],
            schedule: map['schedule'],
            scheduleNext: map['scheduleNext'],
            schedulePrevious: map['schedulePrevious'],
            timeout: map['timeout'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "\$permissions": $permissions.toMap(),
            "name": name,
            "dateCreated": dateCreated,
            "dateUpdated": dateUpdated,
            "status": status,
            "env": env,
            "tag": tag,
            "vars": vars,
            "events": events,
            "schedule": schedule,
            "scheduleNext": scheduleNext,
            "schedulePrevious": schedulePrevious,
            "timeout": timeout,
        };
    }
}

