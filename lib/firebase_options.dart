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
    apiKey: 'AIzaSyDSUTpm6WVoP4stWe30boV6m6RFjdmZ0ak',
    appId: '1:662986295849:web:ff25ac9378db8a58b12a38',
    messagingSenderId: '662986295849',
    projectId: 'signin-chordfinder',
    authDomain: 'signin-chordfinder.firebaseapp.com',
    storageBucket: 'signin-chordfinder.appspot.com',
    measurementId: 'G-L730JYCE84',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXOUGXO-l-gNTesv7PCL09WeAjh_kx968',
    appId: '1:662986295849:android:e76c934d819de6cdb12a38',
    messagingSenderId: '662986295849',
    projectId: 'signin-chordfinder',
    storageBucket: 'signin-chordfinder.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBL-Hsn9-QHx_kj_RGmwzCF2zLFrz8UCTQ',
    appId: '1:662986295849:ios:8451103396305422b12a38',
    messagingSenderId: '662986295849',
    projectId: 'signin-chordfinder',
    storageBucket: 'signin-chordfinder.appspot.com',
    iosClientId: '662986295849-br653c8uo31d76c6ppne9pulufde8jdd.apps.googleusercontent.com',
    iosBundleId: 'com.example.chordFinder',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBL-Hsn9-QHx_kj_RGmwzCF2zLFrz8UCTQ',
    appId: '1:662986295849:ios:8451103396305422b12a38',
    messagingSenderId: '662986295849',
    projectId: 'signin-chordfinder',
    storageBucket: 'signin-chordfinder.appspot.com',
    iosClientId: '662986295849-br653c8uo31d76c6ppne9pulufde8jdd.apps.googleusercontent.com',
    iosBundleId: 'com.example.chordFinder',
  );
}
