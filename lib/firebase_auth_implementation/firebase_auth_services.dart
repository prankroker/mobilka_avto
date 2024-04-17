import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobilka_avto/global/common/toast.dart';

class FirebaseAuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {

    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }on FirebaseAuthException catch(e){
      if(e.code == 'email-already-in-use'){
        showToast(message: 'email is already in use');
      }else{
        showToast(message: 'Error: ${e.code}');
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found' || e.code == 'wrong-password'){
        showToast(message: 'Invalid password or email');
      }else{
        showToast(message: 'Error: ${e.code}');
      }
    }
    return null;
  }
}