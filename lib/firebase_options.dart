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
    apiKey: 'AIzaSyAlN1MYBMv_RIabuxzqDSdpgiz3SXlybCU',
    appId: '1:953902939900:web:31153d1a2a86019606e179',
    messagingSenderId: '953902939900',
    projectId: 'multiapp-b4ccf',
    authDomain: 'multiapp-b4ccf.firebaseapp.com',
    storageBucket: 'multiapp-b4ccf.appspot.com',
    measurementId: 'G-5GWRHD9H4K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0Y6TBWGfepoGLsOnLJniWfjkSIkTejiE',
    appId: '1:953902939900:android:a62512a874b5d70106e179',
    messagingSenderId: '953902939900',
    projectId: 'multiapp-b4ccf',
    storageBucket: 'multiapp-b4ccf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnk77-XQ4ByvNsvUkaBytWLT3p0m6Xcak',
    appId: '1:953902939900:ios:4fc80f48a24a7e5c06e179',
    messagingSenderId: '953902939900',
    projectId: 'multiapp-b4ccf',
    storageBucket: 'multiapp-b4ccf.appspot.com',
    iosClientId: '953902939900-5kvs1slnt38ecj58vkt639monr90m1aq.apps.googleusercontent.com',
    iosBundleId: 'com.example.testUi',
  );
}