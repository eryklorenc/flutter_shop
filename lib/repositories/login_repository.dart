import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginRepository {
  Stream<User?> authState() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future<void> register({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }

  Future<void> changeEmail(String newEmail, String password) async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        final AuthCredential credential = EmailAuthProvider.credential(
          email: user.email!,
          password: password,
        );
        await user.reauthenticateWithCredential(credential);
        await user.updateEmail(newEmail);
      } catch (error) {
        throw error;
      }
    }
  }

  Future<void> changePassword(String newPassword, String oldPassword) async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        final AuthCredential credential = EmailAuthProvider.credential(
          email: user.email!,
          password: oldPassword,
        );
        await user.reauthenticateWithCredential(credential);
        await user.updatePassword(newPassword);
      } catch (error) {
        throw error;
      }
    }
  }
}
