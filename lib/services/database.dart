part of appwrite;


class Database extends Service {
    Database(Client client): super(client);

     /// List Documents
     ///
     /// Get a list of all the user documents. You can use the query params to
     /// filter your results. On admin mode, this endpoint will return a list of all
     /// of the project's documents. [Learn more about different API
     /// modes](/docs/admin).
     ///
     Future<DocumentListModel> listDocuments({required String collectionId, List filters = const [], int limit = 25, int offset = 0, String orderField = '', OrderType orderType = OrderType.asc, String orderCast = 'string', String search = ''}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'filters': filters,
            'limit': limit,
            'offset': offset,
            'orderField': orderField,
            'orderType': orderType.name(),
            'orderCast': orderCast,
            'search': search,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return DocumentListModel.fromMap(res.data);
    }

     /// Create Document
     ///
     /// Create a new Document. Before using this route, you should create a new
     /// collection resource using either a [server
     /// integration](/docs/server/database#databaseCreateCollection) API or
     /// directly from your database console.
     ///
     Future<DocumentModel> createDocument({required String collectionId, required Map data, List read = const [], List write = const [], String parentDocument = '', String parentProperty = '', String parentPropertyType = 'assign'}) async {
        final String path = '/database/collections/{collectionId}/documents'.replaceAll(RegExp('{collectionId}'), collectionId);

        final Map<String, dynamic> params = {
            'data': data,
            'read': read,
            'write': write,
            'parentDocument': parentDocument,
            'parentProperty': parentProperty,
            'parentPropertyType': parentPropertyType,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return DocumentModel.fromMap(res.data);
    }

     /// Get Document
     ///
     /// Get a document by its unique ID. This endpoint response returns a JSON
     /// object with the document data.
     ///
     Future<DocumentModel> getDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return DocumentModel.fromMap(res.data);
    }

     /// Update Document
     ///
     /// Update a document by its unique ID. Using the patch method you can pass
     /// only specific fields that will get updated.
     ///
     Future<DocumentModel> updateDocument({required String collectionId, required String documentId, required Map data, List read = const [], List write = const []}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
            'data': data,
            'read': read,
            'write': write,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return DocumentModel.fromMap(res.data);
    }

     /// Delete Document
     ///
     /// Delete a document by its unique ID. This endpoint deletes only the parent
     /// documents, its attributes and relations to other documents. Child documents
     /// **will not** be deleted.
     ///
     Future deleteDocument({required String collectionId, required String documentId}) async {
        final String path = '/database/collections/{collectionId}/documents/{documentId}'.replaceAll(RegExp('{collectionId}'), collectionId).replaceAll(RegExp('{documentId}'), documentId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }
}