import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigninService {
  static final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
  ]);

  static Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();

      final googleKey = await account!.authentication;

      return account;
    } catch (e) {
      print('Error en google_signin_service');
      print(e);
      return null;
    }
  }

  static Future signOut() async {
    await _googleSignIn.signOut();
  }
}
