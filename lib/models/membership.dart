part of appwrite;

class MembershipModel {
    late final String $id;
    late final String userId;
    late final String teamId;
    late final String name;
    late final String email;
    late final int invited;
    late final int joined;
    late final bool confirm;
    late final List roles;

    MembershipModel({
        required this.$id,
        required this.userId,
        required this.teamId,
        required this.name,
        required this.email,
        required this.invited,
        required this.joined,
        required this.confirm,
        required this.roles,
    });

    factory MembershipModel.fromMap(Map<String, dynamic> map) {
        return MembershipModel(
            $id: map['\$id'],
            userId: map['userId'],
            teamId: map['teamId'],
            name: map['name'],
            email: map['email'],
            invited: map['invited'],
            joined: map['joined'],
            confirm: map['confirm'],
            roles: map['roles'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "userId": userId,
            "teamId": teamId,
            "name": name,
            "email": email,
            "invited": invited,
            "joined": joined,
            "confirm": confirm,
            "roles": roles,
        };
    }
}

