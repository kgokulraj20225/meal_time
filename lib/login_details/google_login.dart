// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:meal_time/allfun.dart';
// import 'package:meal_time/login_details/firebase_options.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     ); // Ensure Firebase is initialized
//   } catch (e) {
//     print('Firebase initialization failed: $e');
//     // Optionally handle the error here
//   }
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Google Sign-In Demo',
//       home: SignInDemo(),
//     );
//   }
// }
//
// class SignInDemo extends StatefulWidget {
//   @override
//   _SignInDemoState createState() => _SignInDemoState();
// }
//
// class _SignInDemoState extends State<SignInDemo> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//
//   Future<User?> _signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) {
//         // The user canceled the sign- in
//         return null;
//       }
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       final UserCredential userCredential =
//           await _auth.signInWithCredential(credential);
//       final User? user = userCredential.user;
//
//       return user;
//     } catch (e) {
//       print('Error signing in with Google: $e');
//       // Optionally handle the error here
//       return null;
//     }
//   }
//
//   void _signOut() async {
//     await _googleSignIn.signOut();
//     await _auth.signOut();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Google Sign-In"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () async {
//                 User? user = await _signInWithGoogle();
//                 if (user != null) {
//                   print("User signed in: ${user.displayName}");
//                 } else {
//                   print("Failed to sign in.");
//                 }
//               },
//               child: Text('Sign in with Google'),
//             ),
//             SizedBox(height: 20), // Add spacing between buttons
//             ElevatedButton(
//               onPressed: _signOut,
//               child: Text('Sign out'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
