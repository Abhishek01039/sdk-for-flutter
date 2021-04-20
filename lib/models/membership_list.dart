part of appwrite;

class MembershipListModel {
    late final int sum;
    late final List<MembershipModel> memberships;

    MembershipListModel({
        required this.sum,
        required this.memberships,
    });

    factory MembershipListModel.fromMap(Map<String, dynamic> map) {
        return MembershipListModel(
            sum: map['sum'],
            memberships: List<MembershipModel>.from(map['memberships'].map((p) => MembershipModel.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "memberships": memberships.map((p) => p.toMap()),
        };
    }
}

