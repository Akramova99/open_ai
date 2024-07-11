// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBub9Ajra8NcT2jQzgTJUwa-K0WwuOgEHI',
    appId: '1:42959737592:web:168f6ce65c988ae155a10d',
    messagingSenderId: '42959737592',
    projectId: 'nova-bfaf7',
    authDomain: 'nova-bfaf7.firebaseapp.com',
    storageBucket: 'nova-bfaf7.appspot.com',
    measurementId: 'G-619HXPY8QZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSzCokMtnkHEn--Zdv_wBhS29n7d1EwWc',
    appId: '1:42959737592:android:e2135239c6deb5ec55a10d',
    messagingSenderId: '42959737592',
    projectId: 'nova-bfaf7',
    storageBucket: 'nova-bfaf7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfJl1mToSmu_boRmgPUf43-5M1Mh1wpF8',
    appId: '1:42959737592:ios:2b7fb13f6aa4029155a10d',
    messagingSenderId: '42959737592',
    projectId: 'nova-bfaf7',
    storageBucket: 'nova-bfaf7.appspot.com',
    iosBundleId: 'com.example.openAi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDfJl1mToSmu_boRmgPUf43-5M1Mh1wpF8',
    appId: '1:42959737592:ios:2b7fb13f6aa4029155a10d',
    messagingSenderId: '42959737592',
    projectId: 'nova-bfaf7',
    storageBucket: 'nova-bfaf7.appspot.com',
    iosBundleId: 'com.example.openAi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBub9Ajra8NcT2jQzgTJUwa-K0WwuOgEHI',
    appId: '1:42959737592:web:20fe72fe96ddcbd955a10d',
    messagingSenderId: '42959737592',
    projectId: 'nova-bfaf7',
    authDomain: 'nova-bfaf7.firebaseapp.com',
    storageBucket: 'nova-bfaf7.appspot.com',
    measurementId: 'G-R674QKR20T',
  );
}
