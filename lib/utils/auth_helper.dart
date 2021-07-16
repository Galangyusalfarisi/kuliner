import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static signInWithEmail({String email, String password}) async{
    final res = await _auth.signInWithEmailAndPassword(email: email, password:
    password);
    final User user = res.user;
    return user;
  }

  static signInWithGoogle()async{
    GoogleSignIn googleSignIn = GoogleSignIn();
    final acc = await googleSignIn.signIn();
    final auth = await acc.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken:  auth.idToken
    );
    final res = await _auth.signInWithCredential(credential);
    return res.user;
  }

  // GET UID
  String getCurrentUID() {
    return _auth.currentUser.uid;
  }

  // GET CURRENT USER
  Future getCurrentUser() async {
    return _auth.currentUser;
  }

  static logout(){
    GoogleSignIn().signOut();
    return _auth.signOut();
  }

}