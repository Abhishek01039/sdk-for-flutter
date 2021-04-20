part of appwrite;


class Account extends Service {
    Account(Client client): super(client);

     /// Get Account
     ///
     /// Get currently logged in user data as JSON object.
     ///
     Future<UserModel> get() async {
        final String path = '/account';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return UserModel.fromMap(res.data);
    }

     /// Create Account
     ///
     /// Use this endpoint to allow a new user to register a new account in your
     /// project. After the user registration completes successfully, you can use
     /// the [/account/verfication](/docs/client/account#accountCreateVerification)
     /// route to start verifying the user email address. To allow the new user to
     /// login to their new account, you need to create a new [account
     /// session](/docs/client/account#accountCreateSession).
     ///
     Future<UserModel> create({required String email, required String password, String name = ''}) async {
        final String path = '/account';

        final Map<String, dynamic> params = {
            'email': email,
            'password': password,
            'name': name,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return UserModel.fromMap(res.data);
    }

     /// Delete Account
     ///
     /// Delete a currently logged in user account. Behind the scene, the user
     /// record is not deleted but permanently blocked from any access. This is done
     /// to avoid deleted accounts being overtaken by new users with the same email
     /// address. Any user-related resources like documents or storage files should
     /// be deleted separately.
     ///
     Future delete() async {
        final String path = '/account';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update Account Email
     ///
     /// Update currently logged in user account email address. After changing user
     /// address, user confirmation status is being reset and a new confirmation
     /// mail is sent. For security measures, user password is required to complete
     /// this request.
     /// This endpoint can also be used to convert an anonymous account to a normal
     /// one, by passing an email address and a new password.
     ///
     Future<UserModel> updateEmail({required String email, required String password}) async {
        final String path = '/account/email';

        final Map<String, dynamic> params = {
            'email': email,
            'password': password,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return UserModel.fromMap(res.data);
    }

     /// Create Account JWT
     ///
     /// Use this endpoint to create a JSON Web Token. You can use the resulting JWT
     /// to authenticate on behalf of the current user when working with the
     /// Appwrite server-side API and SDKs. The JWT secret is valid for 15 minutes
     /// from its creation and will be invalid if the user will logout.
     ///
     Future createJWT() async {
        final String path = '/account/jwt';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Get Account Logs
     ///
     /// Get currently logged in user list of latest security activity logs. Each
     /// log returns user IP address, location and date and time of log.
     ///
     Future<LogListModel> getLogs() async {
        final String path = '/account/logs';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return LogListModel.fromMap(res.data);
    }

     /// Update Account Name
     ///
     /// Update currently logged in user account name.
     ///
     Future<UserModel> updateName({required String name}) async {
        final String path = '/account/name';

        final Map<String, dynamic> params = {
            'name': name,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return UserModel.fromMap(res.data);
    }

     /// Update Account Password
     ///
     /// Update currently logged in user password. For validation, user is required
     /// to pass the password twice.
     ///
     Future<UserModel> updatePassword({required String password, required String oldPassword}) async {
        final String path = '/account/password';

        final Map<String, dynamic> params = {
            'password': password,
            'oldPassword': oldPassword,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return UserModel.fromMap(res.data);
    }

     /// Get Account Preferences
     ///
     /// Get currently logged in user preferences as a key-value object.
     ///
     Future getPrefs() async {
        final String path = '/account/prefs';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update Account Preferences
     ///
     /// Update currently logged in user account preferences. You can pass only the
     /// specific settings you wish to update.
     ///
     Future updatePrefs({required Map prefs}) async {
        final String path = '/account/prefs';

        final Map<String, dynamic> params = {
            'prefs': prefs,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Password Recovery
     ///
     /// Sends the user an email with a temporary secret key for password reset.
     /// When the user clicks the confirmation link he is redirected back to your
     /// app password reset URL with the secret key and email address values
     /// attached to the URL query string. Use the query string params to submit a
     /// request to the [PUT
     /// /account/recovery](/docs/client/account#accountUpdateRecovery) endpoint to
     /// complete the process.
     ///
     Future<TokenModel> createRecovery({required String email, required String url}) async {
        final String path = '/account/recovery';

        final Map<String, dynamic> params = {
            'email': email,
            'url': url,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return TokenModel.fromMap(res.data);
    }

     /// Complete Password Recovery
     ///
     /// Use this endpoint to complete the user account password reset. Both the
     /// **userId** and **secret** arguments will be passed as query parameters to
     /// the redirect URL you have provided when sending your request to the [POST
     /// /account/recovery](/docs/client/account#accountCreateRecovery) endpoint.
     /// 
     /// Please note that in order to avoid a [Redirect
     /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
     /// the only valid redirect URLs are the ones from domains you have set when
     /// adding your platforms in the console interface.
     ///
     Future<TokenModel> updateRecovery({required String userId, required String secret, required String password, required String passwordAgain}) async {
        final String path = '/account/recovery';

        final Map<String, dynamic> params = {
            'userId': userId,
            'secret': secret,
            'password': password,
            'passwordAgain': passwordAgain,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);
        return TokenModel.fromMap(res.data);
    }

     /// Get Account Sessions
     ///
     /// Get currently logged in user list of active sessions across different
     /// devices.
     ///
     Future<SessionListModel> getSessions() async {
        final String path = '/account/sessions';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return SessionListModel.fromMap(res.data);
    }

     /// Create Account Session
     ///
     /// Allow the user to login into their account by providing a valid email and
     /// password combination. This route will create a new session for the user.
     ///
     Future<SessionModel> createSession({required String email, required String password}) async {
        final String path = '/account/sessions';

        final Map<String, dynamic> params = {
            'email': email,
            'password': password,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return SessionModel.fromMap(res.data);
    }

     /// Delete All Account Sessions
     ///
     /// Delete all sessions from the user account and remove any sessions cookies
     /// from the end client.
     ///
     Future deleteSessions() async {
        final String path = '/account/sessions';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Anonymous Session
     ///
     /// Use this endpoint to allow a new user to register an anonymous account in
     /// your project. This route will also create a new session for the user. To
     /// allow the new user to convert an anonymous account to a normal account
     /// account, you need to update its [email and
     /// password](/docs/client/account#accountUpdateEmail).
     ///
     Future<SessionModel> createAnonymousSession() async {
        final String path = '/account/sessions/anonymous';

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return SessionModel.fromMap(res.data);
    }

     /// Create Account Session with OAuth2
     ///
     /// Allow the user to login to their account using the OAuth2 provider of their
     /// choice. Each OAuth2 provider should be enabled from the Appwrite console
     /// first. Use the success and failure arguments to provide a redirect URL's
     /// back to your app when login is completed.
     ///
    Future createOAuth2Session({required String provider, String success = 'https://appwrite.io/auth/oauth2/success', String failure = 'https://appwrite.io/auth/oauth2/failure', List scopes = const []}) async {
        final String path = '/account/sessions/oauth2/{provider}'.replaceAll(RegExp('{provider}'), provider);

        final Map<String, dynamic> params = {
            'success': success,
            'failure': failure,
            'scopes': scopes,
            'project': client.config['project'],
        };


        final List query = [];

        params.forEach((key, value) {
          if (value is List) { 
            for (var item in value) {
              query.add(Uri.encodeComponent(key + '[]') + '=' + Uri.encodeComponent(item));
            }
          }
          else {
              query.add(Uri.encodeComponent(key) + '=' + Uri.encodeComponent(value));
          }
        });

        Uri endpoint = Uri.parse(client.endPoint);
        Uri url = new Uri(scheme: endpoint.scheme,
          host: endpoint.host,
          port: endpoint.port,
          path: endpoint.path + path,
          query: query.join('&')
        );

        if(kIsWeb) {
          html.window.location.href = url.toString();
          return Future.value();
        }else{

          return FlutterWebAuth.authenticate(
            url: url.toString(),
            callbackUrlScheme: "appwrite-callback-" + client.config['project']!
            ).then((value) async {
                Uri url = Uri.parse(value);
                io.Cookie cookie = new io.Cookie(url.queryParameters['key']!, url.queryParameters['secret']!);
                cookie.domain = Uri.parse(client.endPoint).host;
                cookie.httpOnly = true;
                cookie.path = '/';
                List<io.Cookie> cookies = [cookie];
                await client.init();
                client.cookieJar.saveFromResponse(Uri.parse(client.endPoint), cookies);
            });
        }

    }

     /// Delete Account Session
     ///
     /// Use this endpoint to log out the currently logged in user from all their
     /// account sessions across all of their different devices. When using the
     /// option id argument, only the session unique ID provider will be deleted.
     ///
     Future deleteSession({required String sessionId}) async {
        final String path = '/account/sessions/{sessionId}'.replaceAll(RegExp('{sessionId}'), sessionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Create Email Verification
     ///
     /// Use this endpoint to send a verification message to your user email address
     /// to confirm they are the valid owners of that address. Both the **userId**
     /// and **secret** arguments will be passed as query parameters to the URL you
     /// have provided to be attached to the verification email. The provided URL
     /// should redirect the user back to your app and allow you to complete the
     /// verification process by verifying both the **userId** and **secret**
     /// parameters. Learn more about how to [complete the verification
     /// process](/docs/client/account#accountUpdateVerification). 
     /// 
     /// Please note that in order to avoid a [Redirect
     /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md),
     /// the only valid redirect URLs are the ones from domains you have set when
     /// adding your platforms in the console interface.
     /// 
     ///
     Future<TokenModel> createVerification({required String url}) async {
        final String path = '/account/verification';

        final Map<String, dynamic> params = {
            'url': url,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return TokenModel.fromMap(res.data);
    }

     /// Complete Email Verification
     ///
     /// Use this endpoint to complete the user email verification process. Use both
     /// the **userId** and **secret** parameters that were attached to your app URL
     /// to verify the user email ownership. If confirmed this route will return a
     /// 200 status code.
     ///
     Future<TokenModel> updateVerification({required String userId, required String secret}) async {
        final String path = '/account/verification';

        final Map<String, dynamic> params = {
            'userId': userId,
            'secret': secret,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.put, path: path, params: params, headers: headers);
        return TokenModel.fromMap(res.data);
    }
}