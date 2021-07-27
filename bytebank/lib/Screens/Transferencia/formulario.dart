import 'package:bytebank/componentes/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _titleAppBar = "Nova transferência";
const _titleButton = "Confirmar";


const _labelConta = "Conta";
const _hintConta = "00000";
const _labelValor = "Valor";
const _hintValor = "0.00";


class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    final int? conta = int.tryParse(_controladorConta.text);
    final double? valor = double.tryParse(_controladorValor.text);

    if (conta != null && valor != null) {
      final transfer =
      Transferencia(conta, valor);
      Navigator.pop(context, transfer);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Scaffold(
        appBar: AppBar(
          title: Text(_titleAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[

            Editor(
                label: _labelConta,
                hint: _hintConta,
                icon: Icons.account_box_rounded,
                controller: _controladorConta),
            Editor(
                label: _labelValor,
                hint: _hintValor,
                icon: Icons.monetization_on,
                controller: _controladorValor),
            ElevatedButton(
              child: Text(_titleButton),

              onPressed: () => _criaTransferencia(context),
            )
          ]),
        ));
  }
}
