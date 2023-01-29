// ignore_for_file: public_member_api_docs, sort_constructors_first
// definindo os tres possiveis estados relacionados ao login, sendo estes: initial(inicial), loading (carregando), failure (falha)
// Definindo os estados para usar o Bloc
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:job_timer/app/services/auth/auth_service.dart';

// definindo onde esta a outra parte do codigo
part 'login_state.dart';

// criando a classe para usar do cubic e dizendo onde esta a referencia do estado
class LoginController extends Cubit<LoginState> {
  final AuthService _authService;
// criando o construtor passando para o super o estado inicial
  LoginController(
      // para receber,utiliza-se a estrategia de imutabilidade, ou seja, quem tem a instacia no controller nao vai ter acesso ao Authservice
      // deste modo forco a passagem do authservice pelo controller.
      {required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  // Metodo que realiza o login. Mas quem faz e a camada de negocio Authserv L15
  Future<void> singIn() async {
    // alterando o satus
    emit(state.copyWith(status: LoginStatus.loading));
  }
  // 37:06m - aula 2 - agora vai ser contruido uma nova widget para mostra o
  // login antes de carregar o goolge pedindo as credeciais
}
