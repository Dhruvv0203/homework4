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
    apiKey: 'AIzaSyCIADTgB3rMS7xhrI1MLHP7itix3NDuqAk',
    appId: '1:498878685458:web:6109b1abc95bdda15313cb',
    messagingSenderId: '498878685458',
    projectId: 'message-board-app-c7908',
    authDomain: 'message-board-app-c7908.firebaseapp.com',
    storageBucket: 'message-board-app-c7908.firebasestorage.app',
    measurementId: 'G-Z25RWE8E2B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTijC5Iz2cIRAEz-XobJScKTsvrGgG0rc',
    appId: '1:498878685458:android:43f7098a08107e1e5313cb',
    messagingSenderId: '498878685458',
    projectId: 'message-board-app-c7908',
    storageBucket: 'message-board-app-c7908.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzNAgzdFiFf2Ejh2V6hgMhY-HXr91QW_U',
    appId: '1:498878685458:ios:a919fc5b548fd0895313cb',
    messagingSenderId: '498878685458',
    projectId: 'message-board-app-c7908',
    storageBucket: 'message-board-app-c7908.firebasestorage.app',
    iosBundleId: 'com.example.messageBoardFixed',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzNAgzdFiFf2Ejh2V6hgMhY-HXr91QW_U',
    appId: '1:498878685458:ios:a919fc5b548fd0895313cb',
    messagingSenderId: '498878685458',
    projectId: 'message-board-app-c7908',
    storageBucket: 'message-board-app-c7908.firebasestorage.app',
    iosBundleId: 'com.example.messageBoardFixed',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCIADTgB3rMS7xhrI1MLHP7itix3NDuqAk',
    appId: '1:498878685458:web:6f6cce9b883dd7ba5313cb',
    messagingSenderId: '498878685458',
    projectId: 'message-board-app-c7908',
    authDomain: 'message-board-app-c7908.firebaseapp.com',
    storageBucket: 'message-board-app-c7908.firebasestorage.app',
    measurementId: 'G-DMYY7BCVV5',
  );
}
