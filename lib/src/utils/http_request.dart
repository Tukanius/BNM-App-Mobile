import 'package:bnm_flutter/components/dialog/error_dialog.dart';
import 'package:bnm_flutter/main.dart';
import 'package:bnm_flutter/provider/user_provider.dart';
import 'package:bnm_flutter/services/navigation.dart';
import 'package:bnm_flutter/src/screens/splash_page/splash_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'http_handler.dart';

class HttpRequest {
  // static const host = "http://dev-cb-admin.zto.mn";
  // static const host = 'https://gerbook.com';
  // static const host = 'https://gb.zto.mn';
  // static const host = 'https://honog-admin.zto.mn/';
  // static const host = 'https://honog.zto.mn';
  // static const host = 'https://ttt-inventory.zto.mn';
  // static const host = 'https://ttt.hotula.mn';
  // static const host = 'http://128.199.130.91:3000';
  // static const host = 'http://192.168.1.3:3000';
  static const host = 'https://api.bravenewmongolia.com';

  // static const host = 'https://app.xotsocial.mn';

  // static const version = '/aut';
  // static const version = '/api/mobile';w

  static const uri = host;

  // static const part = "/mobile";

  Dio dio = Dio();

  Future<dynamic> request(
    String api,
    String method,
    dynamic data, {
    bool handler = true,
    bool approve = false,
  }) async {
    Response? response;
    final String uri;
    var token = await UserProvider.getAccessToken();
    uri = '$host$api';
    debugPrint(uri);

    debugPrint('+++++++++++++++++++++++++++++++++++++++++++++++++++');
    debugPrint('handler: ' + handler.toString());
    debugPrint('+++++++++++++++++++++++++++++++++++++++++++++++++++ ');
    try {
      // Directory dir = await getTemporaryDirectory();
      // CookieJar cookieJar = PersistCookieJar(
      //   storage: FileStorage(dir.path),
      //   ignoreExpires: true,
      // );
      // String? locale = await getLocale();
      // if (locale == null) {
      //   await saveLocale('mn');
      //   locale = await getLocale();
      // } else {
      //   locale = await getLocale();
      // }
      // dio.interceptors.add(CookieManager(cookieJar));
      // cookieJar.saveFromResponse(
      //   Uri.parse('$host$version'),
      //   [Cookie('NEXT_LOCALE', '${locale}')],
      // );
      var token = await UserProvider.getAccessToken();
      var deviceToken = await UserProvider.getDeviceToken();
      // debugPrint('++++++++++++++++++++++deviceToken+++++++++++++++ ');
      // debugPrint(deviceToken);
      // debugPrint('+++++++++++++++++++++++deviceToken++++++++++++++ ');
      String value = 'undefined';
      if (token != null) {
        value = 'Bearer $token';
      } else {
        value;
      }
      dio.options.headers = {
        'authorization': '$value',
        'device-token': '$deviceToken',
        'device_type': 'MOS',
        'device_imei': 'test-imei',
        'device_info': 'iphone 13',
        'isMobile': true,
      };
    } catch (err) {
      debugPrint(err.toString());
    }

    if (method != 'GET') {
      debugPrint('body: $data');
    }

    try {
      switch (method) {
        case 'GET':
          {
            response = await dio.get(uri, queryParameters: data);
            break;
          }
        case 'POST':
          {
            response = await dio.post(uri, data: data);
            break;
          }
        case 'PUT':
          {
            response = await dio.put(uri, data: data);
            break;
          }
        case 'DELETE':
          {
            response = await dio.delete(uri, data: data);
            break;
          }
      }

      return HttpHandler(statusCode: response?.statusCode).handle(response);
      // ignore: deprecated_member_use
    } on DioError catch (ex) {
      if (token != null && ex.response?.statusCode == 401) {
        print('====TOKEN from Ger====');
        print(token);
        print('====TOKEN from Ger====');

        MyApp.setInvalidToken(MyApp.invalidTokenCount + 1);
        if (MyApp.invalidTokenCount == 1) {
          await UserProvider().auth();
          locator<NavigationService>().pushNamed(
            routeName: SplashPage.routeName,
          );
          // NotifyService().showNotification(
          //   title: 'Green Score',
          //   body: 'Нэвтрэх эрх хүчингүй боллоо',
          // );
          MyApp.setInvalidToken(0);

          return null;
        }
        return;
      }
      // try {
      //   result = await _connectivity.checkConnectivity();
      //   if (result == ConnectivityResult.none) {
      //     MyApp.dialogService!
      //         .showInternetErrorDialog("No internet connection");
      //     return null;
      //   }
      // } on PlatformException catch (e) {
      //   debugPrint(e.toString());
      // }

      HttpHandler? error = HttpHandler(
        statusCode: ex.response?.statusCode,
      ).handle(ex.response);
      if (handler == true && error!.message != null) {
        BuildContext? context = NavigationService.navigatorKey.currentContext;
        ErrorDialog(context: context!).show(error.message.toString());
      }
      throw error!;
    }
  }

  Future<dynamic> get(String url, {dynamic data, bool handler = true}) async {
    try {
      return await request(url, 'GET', data, handler: handler);
    } catch (e) {
      debugPrint("GET =>" + e.toString());
      rethrow;
    }
  }

  Future<dynamic> post(
    String url, {
    dynamic data,
    bool handler = true,
    bool approve = false,
  }) async {
    try {
      return await request(
        url,
        'POST',
        data,
        handler: handler,
        approve: approve,
      );
    } catch (e) {
      debugPrint("POST =>" + e.toString());
      rethrow;
    }
  }

  Future<dynamic> put(String url, {dynamic data, bool handler = true}) async {
    try {
      return await request(url, 'PUT', data, handler: handler);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<dynamic> del(String url, {dynamic data, bool handler = true}) async {
    return await request(url, 'DELETE', data, handler: handler);
  }
}
