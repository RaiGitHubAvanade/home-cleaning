import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
import 'data/repositories/authentication/authentication.repository.dart';
import 'firebase_options.dart';

void main() async {
  /// -- Widgets Binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// -- GetX Local Storage
  await GetStorage.init();

  /// --  Await Native Splash until items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// --  Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  /* final controller = Get.put(DummyRepository());
  await controller.uploadDummyData(
      '/Users/rogerflorat/Development/Home Cleaning APP/home_cleaning/data/services/address.json',
      'Addresses'); */

  runApp(const App());
}
