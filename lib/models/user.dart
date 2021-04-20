part of appwrite;

class UserModel {
    late final String $id;
    late final String name;
    late final int registration;
    late final int status;
    late final String email;
    late final bool emailVerification;
    late final String prefs;

    UserModel({
        required this.$id,
        required this.name,
        required this.registration,
        required this.status,
        required this.email,
        required this.emailVerification,
        required this.prefs,
    });

    factory UserModel.fromMap(Map<String, dynamic> map) {
        return UserModel(
            $id: map['\$id'],
            name: map['name'],
            registration: map['registration'],
            status: map['status'],
            email: map['email'],
            emailVerification: map['emailVerification'],
            prefs: map['prefs'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "name": name,
            "registration": registration,
            "status": status,
            "email": email,
            "emailVerification": emailVerification,
            "prefs": prefs,
        };
    }
}

