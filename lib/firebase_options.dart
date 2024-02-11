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
    apiKey: 'AIzaSyChQYVSQ93VKXjB8pFGgsZ9cvWGwyfnjwU',
    appId: '1:1096527943958:web:bf37f0b6fe46a038b0d837',
    messagingSenderId: '1096527943958',
    projectId: 'grocery-app-22302',
    authDomain: 'grocery-app-22302.firebaseapp.com',
    storageBucket: 'grocery-app-22302.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBudyV-NVTkFcMQvienFdmzYj9ZhcRc9UY',
    appId: '1:1096527943958:android:f9a92c86fd0e8f4bb0d837',
    messagingSenderId: '1096527943958',
    projectId: 'grocery-app-22302',
    storageBucket: 'grocery-app-22302.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdpdZrPPB6dMG-LFbLXzKfThn7DQ0CqyA',
    appId: '1:1096527943958:ios:a1304004ba174c29b0d837',
    messagingSenderId: '1096527943958',
    projectId: 'grocery-app-22302',
    storageBucket: 'grocery-app-22302.appspot.com',
    iosBundleId: 'com.example.clientApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdpdZrPPB6dMG-LFbLXzKfThn7DQ0CqyA',
    appId: '1:1096527943958:ios:59a7d5f277959fe8b0d837',
    messagingSenderId: '1096527943958',
    projectId: 'grocery-app-22302',
    storageBucket: 'grocery-app-22302.appspot.com',
    iosBundleId: 'com.example.clientApp.RunnerTests',
  );
}
