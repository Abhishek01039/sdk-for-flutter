part of appwrite;

class TokenModel {
    late final String $id;
    late final String userId;
    late final String secret;
    late final int expire;

    TokenModel({
        required this.$id,
        required this.userId,
        required this.secret,
        required this.expire,
    });

    factory TokenModel.fromMap(Map<String, dynamic> map) {
        return TokenModel(
            $id: map['\$id'],
            userId: map['userId'],
            secret: map['secret'],
            expire: map['expire'],
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "\$id": $id,
            "userId": userId,
            "secret": secret,
            "expire": expire,
        };
    }
}

