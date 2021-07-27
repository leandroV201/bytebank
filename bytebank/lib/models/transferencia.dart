class Transferencia {
  final int conta;
  final double valor;

  Transferencia( this.conta, this.valor);

  @override
  String toString() {
    return " Conta: $conta" +
        "Valor: $valor";
  }
}
