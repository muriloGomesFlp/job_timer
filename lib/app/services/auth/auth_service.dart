// classe abstrata nao pode ser instanciada, apenas herdade. No flutter nao tem interface.
// Uma interface server como fronteria entre os atores externos (que interagem com a aplicacao) e os demais tipos de classe entre o sistema.
abstract class AuthService {
  Future<void> singIn();
  Future<void> singOut();
}
