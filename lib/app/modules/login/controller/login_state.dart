// o dart permite quebrar em diferentes arquivos e juntar em um unico a nivel de aplicacao
part of "login_controller.dart";

enum LoginStatus { inital, loading, failure }

// O Equatable(package) é usado para simplificar o processo de comparação de instâncias
// do mesmo objeto sem a necessidade de códigos clichê de substituição de “==” e hashCodes.
class LoginState extends Equatable {
  // definindo variaveis ;
  // ao definir uma variavel como final, esta pode ser inicializada em algum momento
  // após a sua declaração, porém uma vez atribuído um valor, este não poderá mais ser alterado
  final LoginStatus status;
  final String? errorMessage;

  // definindo o construtor da classe, nesse caso um contrutor privado
  const LoginState._({required this.status, this.errorMessage});

  //crindo um construtor, definindo o status inicial que sera instanciado apenas uma vez
  const LoginState.initial() : this._(status: LoginStatus.inital);

  // identifica como a classe mudou.por meio de parametros que e identificado a mudanca.
  // ou seja parametros que sao os gatilhos para a mudanca de estado do bloc
  @override
  List<Object?> get props => [status, errorMessage];

  // gerando um copia da class para que seja possivel ter uma nova. Necessario para bloc
  LoginState copyWith({
    LoginStatus? status,
    String? errorMessage,
  }) {
    return LoginState._(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
