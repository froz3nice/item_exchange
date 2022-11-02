// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAgh73GTRMS9jXekTHwGosbUrbZCzmsLuY',
    appId: '1:1094185473982:web:441ecfb7196319f2248bef',
    messagingSenderId: '1094185473982',
    projectId: 'gardenpro-270e4',
    authDomain: 'gardenpro-270e4.firebaseapp.com',
    storageBucket: 'gardenpro-270e4.appspot.com',
    measurementId: 'G-JDJS25FNHN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQojoxLqqXOr9rbRYC5pxGOPv17w6Quko',
    appId: '1:1094185473982:android:012b98345ea7f0a0248bef',
    messagingSenderId: '1094185473982',
    projectId: 'gardenpro-270e4',
    storageBucket: 'gardenpro-270e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8SGFb8L9xVlkab1r2bxzYBiz7UwM9NUM',
    appId: '1:1094185473982:ios:833f9f0d30c89869248bef',
    messagingSenderId: '1094185473982',
    projectId: 'gardenpro-270e4',
    storageBucket: 'gardenpro-270e4.appspot.com',
    iosClientId: '1094185473982-sq0afp31q021vfrt43dirh3duq55qlf7.apps.googleusercontent.com',
    iosBundleId: 'com.braziusProductions.gardenPro',
  );
}