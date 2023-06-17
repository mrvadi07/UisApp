import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'Screens/AuthScreen/login.dart';
import 'Screens/AuthScreen/signup.dart';
import 'Screens/BottomNavigationbar/bottom_navigationbar.dart';
import 'Screens/ForgotPassword/forgot_password1.dart';
import 'Screens/ForgotPassword/forgot_password2.dart';
import 'Screens/ForgotPassword/forgot_password3.dart';
import 'Screens/History/history.dart';
import 'Screens/HomeScreen/form.dart';
import 'Screens/HomeScreen/form1.dart';
import 'Screens/HomeScreen/form2.dart';
import 'Screens/HomeScreen/form3.dart';
import 'Screens/HomeScreen/home.dart';
import 'Screens/Notifications/notifications.dart';
import 'Screens/Profile/profile.dart';
import 'Screens/splash.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(),
        );
      },
    );
  }
}
