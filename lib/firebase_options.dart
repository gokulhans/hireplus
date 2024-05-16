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
    apiKey: 'AIzaSyCknhuIMJ-lAHtBVfkBgWwdA1RvbCjhElo',
    appId: '1:770620836493:web:fb68e7ab13a876efa2b0c4',
    messagingSenderId: '770620836493',
    projectId: 'hireplus-4350a',
    authDomain: 'hireplus-4350a.firebaseapp.com',
    databaseURL: 'https://hireplus-4350a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hireplus-4350a.appspot.com',
    measurementId: 'G-XKP1XJV8P8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDehpxVf0c1LueQZaOYJycAKYq7uI7LcZM',
    appId: '1:770620836493:android:4a90d39b05de40cfa2b0c4',
    messagingSenderId: '770620836493',
    projectId: 'hireplus-4350a',
    databaseURL: 'https://hireplus-4350a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hireplus-4350a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKgmtBa-wUCw3TaAiVxVGt0ymEkvJUpn8',
    appId: '1:770620836493:ios:e1fe8767d0fb3289a2b0c4',
    messagingSenderId: '770620836493',
    projectId: 'hireplus-4350a',
    databaseURL: 'https://hireplus-4350a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hireplus-4350a.appspot.com',
    iosBundleId: 'com.example.hireplusapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKgmtBa-wUCw3TaAiVxVGt0ymEkvJUpn8',
    appId: '1:770620836493:ios:32b3dd6b0601890ba2b0c4',
    messagingSenderId: '770620836493',
    projectId: 'hireplus-4350a',
    databaseURL: 'https://hireplus-4350a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'hireplus-4350a.appspot.com',
    iosBundleId: 'com.example.hireplusapp.RunnerTests',
  );
}
