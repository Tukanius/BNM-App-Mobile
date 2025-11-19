import 'package:bnm_flutter/models/user_model/user.dart';
import 'package:bnm_flutter/src/utils/http_request.dart';

class AuthApi extends HttpRequest {
  login(User user) async {
    var res = await post('/app/auth/login', data: user.toJson(), handler: true);
    return User.fromJson(res as Map<String, dynamic>);
  }

  me(bool handler) async {
    var res = await get('/app/auth/me', handler: handler);
    return User.fromJson(res as Map<String, dynamic>);
  }

  logout() async {
    var res = await post('/aut/app/auth/logout', handler: false);
    return res;
  }
}
