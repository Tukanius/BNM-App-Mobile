import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/provider/localization_provider.dart';
import 'package:bnm_flutter/provider/user_provider.dart';
import 'package:bnm_flutter/services/navigation.dart';
import 'package:bnm_flutter/src/auth/forget_password.dart';
import 'package:bnm_flutter/src/auth/login_page.dart';
import 'package:bnm_flutter/src/auth/register_page.dart';
import 'package:bnm_flutter/src/main_page.dart';
import 'package:bnm_flutter/src/screens/bnm_tours/bnm_tours.dart';
import 'package:bnm_flutter/src/screens/bnm_tours/tour_detail.dart';
import 'package:bnm_flutter/src/screens/events_page/events_page.dart';
import 'package:bnm_flutter/src/screens/events_page/naadam_detail.dart';
import 'package:bnm_flutter/src/screens/main_tabs/accommodation_tab/accommodation_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_direction_page.dart';
// import 'package:bnm_flutter/src/screens/main_tabs/accommodation_tab/accommodation_direction_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/destination_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/direction_page.dart';
import 'package:bnm_flutter/src/screens/about_bnm/about_bnm.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/full_screen_image.dart';
import 'package:bnm_flutter/src/screens/main_tabs/home_tab/search_page.dart';
import 'package:bnm_flutter/src/screens/profile_page/profile_page.dart';
import 'package:bnm_flutter/src/screens/splash_page/onboarding_page.dart';
import 'package:bnm_flutter/src/screens/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final seen = prefs.getBool('seenOnboarding') ?? false;
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await NotifyService().initNotify();

  // final GoogleMapsFlutterPlatform mapsImplementation =
  //     GoogleMapsFlutterPlatform.instance;
  // if (mapsImplementation is GoogleMapsFlutterAndroid) {
  //   await mapsImplementation.initializeWithRenderer(AndroidMapRenderer.latest);
  //   mapsImplementation.useAndroidViewSurface = true;
  // }
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   NotifyService().showNotification(
  //     title: message.notification?.title,
  //     body: message.notification?.body,
  //   );
  // });

  locator.registerLazySingleton(() => NavigationService());

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
          ChangeNotifierProvider(create: (_) => LocalizationProvider()),
        ],
        child: MyApp(seenOnboarding: seen),
      ),
    );
  });
}

GetIt locator = GetIt.instance;

class MyApp extends StatefulWidget {
  final bool seenOnboarding;
  const MyApp({super.key, required this.seenOnboarding});
  static int invalidTokenCount = 0;

  static setInvalidToken(int count) {
    invalidTokenCount = count;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    // final userProvider = Provider.of<UserProvider>(context, listen: false);
    // FirebaseMessaging.instance.requestPermission();
    // FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
    // String? token = await _firebaseMessaging.getToken();
    // print('TOKEN==== $token');
    // if (token != null) {
    //   userProvider.setDeviceToken(token);
    // }
  }

  // void initState() {
  //   super.initState();
  //   loadTranslations();
  // }

  // Future<void> loadTranslations() async {
  //   final localizationProvider = Provider.of<LocalizationProvider>(
  //     context,
  //     listen: false,
  //   );
  //   String? locale = await getLocale();
  //   if (locale == null) {
  //     await saveLocale('mn');
  //     locale = await getLocale();
  //   } else {
  //     locale = await getLocale();
  //   }
  //   await localizationProvider.loadTranslations('${locale}');
  // }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      child: MaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        // builder: (context, widget) => Navigator(
        //   onGenerateRoute: (settings) => MaterialPageRoute(
        //     builder: (context) =>
        //         DialogManager(child: loading(context, widget)),
        //   ),
        // ),
        title: 'BNM',
        theme: ThemeData(useMaterial3: false),
        debugShowCheckedModeBanner: false,
        initialRoute: widget.seenOnboarding == false
            ? OnboardingPage.routeName
            : SplashPage.routeName,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case SplashPage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const SplashPage();
                },
              );
            case SearchPage.routeName:
              SearchPageArguments arguments =
                  settings.arguments as SearchPageArguments;
              return PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return SearchPage(controller: arguments.controller);
                },
              );
            case OnboardingPage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const OnboardingPage();
                },
              );
            case MainPage.routeName:
              MainPageArguments arguments =
                  settings.arguments as MainPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return MainPage(changeIndex: arguments.changeIndex);
                },
              );

            case ProfilePage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const ProfilePage();
                },
              );
            case LoginPage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const LoginPage();
                },
              );
            case DirectionPage.routeName:
              DirectionPageArguments arguments =
                  settings.arguments as DirectionPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return DirectionPage(
                    referenceName: arguments.referenceName,
                    title: arguments.title,
                    tabIndex: arguments.tabIndex,
                    dataType: arguments.dataType,
                  );
                },
              );
            case DestinationDetailPage.routeName:
              DestinationDetailPageArguments arguments =
                  settings.arguments as DestinationDetailPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return DestinationDetailPage(id: arguments.id);
                },
              );
            case RegisterPage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const RegisterPage();
                },
              );
            case ForgetPassword.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const ForgetPassword();
                },
              );
            case EventsPage.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const EventsPage();
                },
              );
            case AboutBnm.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const AboutBnm();
                },
              );
            case BnmTours.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const BnmTours();
                },
              );
            case TourDetail.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const TourDetail();
                },
              );
            case NaadamDetail.routeName:
              return MaterialPageRoute(
                builder: (context) {
                  return const NaadamDetail();
                },
              );
            // case AccommodationDirectionPage.routeName:
            //   AccommodationDirectionPageArguments arguments =
            //       settings.arguments as AccommodationDirectionPageArguments;
            //   return MaterialPageRoute(
            //     builder: (context) {
            //       return AccommodationDirectionPage(title: arguments.title);
            //     },
            //   );
            case AccommodationDetailPage.routeName:
              AccommodationDetailPageArguments arguments =
                  settings.arguments as AccommodationDetailPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return AccommodationDetailPage(id: arguments.id);
                },
              );
            case CommercialDirectionPage.routeName:
              CommercialDirectionPageArguments arguments =
                  settings.arguments as CommercialDirectionPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return CommercialDirectionPage(
                    referenceId: arguments.referenceId,
                    title: arguments.title,
                    dataType: arguments.dataType,
                  );
                },
              );
            case CommercialDetailPage.routeName:
              CommercialDetailPageArguments arguments =
                  settings.arguments as CommercialDetailPageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return CommercialDetailPage(id: arguments.id);
                },
              );
            case FullScreenImage.routeName:
              FullScreenImageArguments arguments =
                  settings.arguments as FullScreenImageArguments;
              return MaterialPageRoute(
                builder: (context) {
                  return FullScreenImage(images: arguments.images);
                },
              );
            default:
              return MaterialPageRoute(builder: (_) => const SplashPage());
          }
        },
      ),
    );
  }
}
