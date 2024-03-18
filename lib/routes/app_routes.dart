import 'package:flutter/material.dart';
import '../presentation/men_dark_screen/men_dark_screen.dart';
import '../presentation/profil_dark_screen/profil_dark_screen.dart';
import '../presentation/arkada_lar_dark_screen/arkada_lar_dark_screen.dart';
import '../presentation/arkada_ekle_dark_screen/arkada_ekle_dark_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/ana_men_dark_screen/ana_men_dark_screen.dart';
import '../presentation/kayan_men_dark_screen/kayan_men_dark_screen.dart';

import '../presentation/arama_dark_screen/arama_dark_screen.dart';
import '../presentation/aranan_yer_dark_one_screen/aranan_yer_dark_one_screen.dart';
import '../presentation/aranan_yer_dark_screen/aranan_yer_dark_screen.dart';




class AppRoutes {
  static const String menDarkScreen = '/men_dark_screen';

  static const String profilDarkScreen = '/profil_dark_screen';

  static const String arkadaLarDarkScreen = '/arkada_lar_dark_screen';

  static const String arkadaEkleDarkScreen = '/arkada_ekle_dark_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  static const String kayanMenDarkScreen = '/kayan_men_dark_screen';
  static const String anaMenDarkScreen = '/ana_men_dark_screen';
  static const String arananYerDarkOneScreen = '/aranan_yer_dark_one_screen';
  static const String arananYerDarkScreen = '/aranan_yer_dark_screen';
  static const String aramaDarkScreen = '/arama_dark_screen';


  static Map<String, WidgetBuilder> routes = {
    menDarkScreen: (context) => MenDarkScreen(),
    profilDarkScreen: (context) => ProfilDarkScreen(),
    arkadaLarDarkScreen: (context) => ArkadaLarDarkScreen(),
    arkadaEkleDarkScreen: (context) => ArkadaEkleDarkScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    anaMenDarkScreen: (context) => AnaMenDarkScreen(),
    kayanMenDarkScreen: (context) => KayanMenDarkScreen(),
    arananYerDarkOneScreen: (context) => ArananYerDarkOneScreen(),
    arananYerDarkScreen: (context) => ArananYerDarkScreen(),
    aramaDarkScreen: (context) => AramaDarkScreen(),


  };
}
