import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './auth_service.dart';

class AuthServiceImpl implements AuthService {
  @override
  Future<void> singIn() async {
    // chama a janela de login google
    final googleSignIn = await GoogleSignIn().signIn();
    // coletando detalhes da autenticacao
    final googleAuth = await googleSignIn?.authentication;
    // gerendo as credenciais para o firebase
    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
    // efetuando o login usando as redes sociais (google), assim o se o usuario nao for cadastrado, este e cadastrado automaticamente
    await FirebaseAuth.instance.signInWithCredential(credential);
    // caso haja problema, o Firebase apresenta uma exeption
  }

  @override
  Future<void> singOut() async {
    await FirebaseAuth.instance.signOut(); // faz o logout no firebase
    await GoogleSignIn()
        .disconnect(); // limpa o regitro do google e faz com que pede o email novamente no proximo login
  }
}
