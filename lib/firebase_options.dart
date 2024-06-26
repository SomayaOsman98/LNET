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
        return macos;
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
    apiKey: 'AIzaSyBVF_MjkHgGXLnZasOg-DdXvbg0CN9_KVM',
    appId: '1:727154597948:web:1302a24fddb89f5e996339',
    messagingSenderId: '727154597948',
    projectId: 'lnet-65102',
    authDomain: 'lnet-65102.firebaseapp.com',
    storageBucket: 'lnet-65102.appspot.com',
    measurementId: 'G-TFF76E5N61',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD78LuhpU7B6LL9eLTzY8XH7nWlBjFs6qQ',
    appId: '1:727154597948:android:40f45289c2ecc599996339',
    messagingSenderId: '727154597948',
    projectId: 'lnet-65102',
    storageBucket: 'lnet-65102.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7hBZjM3TubztBfTRlZsikpMqyHAlf7KY',
    appId: '1:727154597948:ios:3d6bc3c5b6c6a90d996339',
    messagingSenderId: '727154597948',
    projectId: 'lnet-65102',
    storageBucket: 'lnet-65102.appspot.com',
    iosBundleId: 'com.example.adminLnet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7hBZjM3TubztBfTRlZsikpMqyHAlf7KY',
    appId: '1:727154597948:ios:f334966ecefcb94d996339',
    messagingSenderId: '727154597948',
    projectId: 'lnet-65102',
    storageBucket: 'lnet-65102.appspot.com',
    iosBundleId: 'com.example.adminLnet.RunnerTests',
  );
}
