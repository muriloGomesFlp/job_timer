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
    apiKey: 'AIzaSyCT66DaeiaNstIG5Z5N5knIKND_vEDoK7w',
    appId: '1:690063818780:web:d882c38659e22dfec25fd9',
    messagingSenderId: '690063818780',
    projectId: 'sgv-others-projects-to-learn',
    authDomain: 'sgv-others-projects-to-learn.firebaseapp.com',
    storageBucket: 'sgv-others-projects-to-learn.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWD2JRTg0XjOJLJWe5db941gRUnBLto3M',
    appId: '1:690063818780:android:e687836ce7d9be58c25fd9',
    messagingSenderId: '690063818780',
    projectId: 'sgv-others-projects-to-learn',
    storageBucket: 'sgv-others-projects-to-learn.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7tHaq5xTdKBXXQOWcWb3KjnvqxyNabDI',
    appId: '1:690063818780:ios:b2097b5ea00353c9c25fd9',
    messagingSenderId: '690063818780',
    projectId: 'sgv-others-projects-to-learn',
    storageBucket: 'sgv-others-projects-to-learn.appspot.com',
    iosClientId: '690063818780-igqlbp570aghvuu6gmjs9sib5g9lrq31.apps.googleusercontent.com',
    iosBundleId: 'br.com.sgvsolutions.jobTimer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7tHaq5xTdKBXXQOWcWb3KjnvqxyNabDI',
    appId: '1:690063818780:ios:b2097b5ea00353c9c25fd9',
    messagingSenderId: '690063818780',
    projectId: 'sgv-others-projects-to-learn',
    storageBucket: 'sgv-others-projects-to-learn.appspot.com',
    iosClientId: '690063818780-igqlbp570aghvuu6gmjs9sib5g9lrq31.apps.googleusercontent.com',
    iosBundleId: 'br.com.sgvsolutions.jobTimer',
  );
}
