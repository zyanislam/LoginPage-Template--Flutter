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
    apiKey: 'AIzaSyDNBzfywIAGGp40PuyYJuz0n_fvZhmOKvM',
    appId: '1:1094876927317:web:0e4d9112ae4d6fb7dc0bdc',
    messagingSenderId: '1094876927317',
    projectId: 'authentication-ef01e',
    authDomain: 'authentication-ef01e.firebaseapp.com',
    storageBucket: 'authentication-ef01e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgU0sUWr5Ngokorlj16cvoc0D7-qyYu7g',
    appId: '1:1094876927317:android:c17334c55d3c92efdc0bdc',
    messagingSenderId: '1094876927317',
    projectId: 'authentication-ef01e',
    storageBucket: 'authentication-ef01e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzV3RQb5svGRWxvDHvRl2RGh7-imcb9hc',
    appId: '1:1094876927317:ios:8beab56c3273b8dadc0bdc',
    messagingSenderId: '1094876927317',
    projectId: 'authentication-ef01e',
    storageBucket: 'authentication-ef01e.appspot.com',
    iosBundleId: 'com.example.loginSignup',
  );
}
