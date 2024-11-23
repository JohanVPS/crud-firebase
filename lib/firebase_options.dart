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
    apiKey: 'AIzaSyDq-QdQDyl5ibWn5oWSgTxVoyLvQimA2zk',
    appId: '1:885043111243:web:13ed82529d950832c934ce',
    messagingSenderId: '885043111243',
    projectId: 'crud-f2083',
    authDomain: 'crud-f2083.firebaseapp.com',
    storageBucket: 'crud-f2083.firebasestorage.app',
    measurementId: 'G-YQQSF37CR6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqIsStUejxi287jFZub_A3N2gkMO2GmfQ',
    appId: '1:885043111243:android:68ca7631424ff18ac934ce',
    messagingSenderId: '885043111243',
    projectId: 'crud-f2083',
    storageBucket: 'crud-f2083.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGQbZBm8GK5rahRdFEryJdXV7CWSedWcE',
    appId: '1:885043111243:ios:e728d2d9a54bccffc934ce',
    messagingSenderId: '885043111243',
    projectId: 'crud-f2083',
    storageBucket: 'crud-f2083.firebasestorage.app',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGQbZBm8GK5rahRdFEryJdXV7CWSedWcE',
    appId: '1:885043111243:ios:e728d2d9a54bccffc934ce',
    messagingSenderId: '885043111243',
    projectId: 'crud-f2083',
    storageBucket: 'crud-f2083.firebasestorage.app',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDq-QdQDyl5ibWn5oWSgTxVoyLvQimA2zk',
    appId: '1:885043111243:web:21c987868328cce4c934ce',
    messagingSenderId: '885043111243',
    projectId: 'crud-f2083',
    authDomain: 'crud-f2083.firebaseapp.com',
    storageBucket: 'crud-f2083.firebasestorage.app',
    measurementId: 'G-VSXQRYT65B',
  );
}