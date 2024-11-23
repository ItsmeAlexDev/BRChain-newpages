import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recuperacao_senha_model.dart';
export 'recuperacao_senha_model.dart';

class RecuperacaoSenhaWidget extends StatefulWidget {
  const RecuperacaoSenhaWidget({super.key});

  @override
  State<RecuperacaoSenhaWidget> createState() => _RecuperacaoSenhaWidgetState();
}

class _RecuperacaoSenhaWidgetState extends State<RecuperacaoSenhaWidget> {
  late RecuperacaoSenhaModel _model;

  @override
  void initState() {
    super.initState();
    _model = RecuperacaoSenhaModel();
    _model.initState(context);
    _model.emailTextController = TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF388834),
              Colors.white,
              Color(0xFF5CBD96),
            ],
            stops: [0.0, 1.0, 1.0],
            begin: AlignmentDirectional(0.87, -1.0),
            end: AlignmentDirectional(-0.87, 1.0),
          ),
        ),
        child: Center(
          child: Container(
            width: 452,
            height: 382,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/brchain-logo-hz.png',
                  height: 60,
                ),
                const SizedBox(height: 36),
                Text(
                  'Recuperação de senha',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Digite o email que está vinculado a sua\nconta para recuperar sua senha.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 28),
                TextFormField(
                  controller: _model.emailTextController,
                  focusNode: _model.emailFocusNode,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
//TODO aplicar o validador aqui, caso necessário
//validator: _model.emailTextControllerValidator,
                ),
                const SizedBox(height: 24),
                FFButtonWidget(
                  onPressed: () {
                    String email = _model.emailTextController?.text ?? '';
                    print("The collected email was: $email");
//TODO Verificar validade do email
//TODO Passar email para o sistema
//caso no sistema, ir para tela para continuar a mudança de senha
//caso não estando no sistema, ir para a tela de conta não encontrada
                  },
                  text: 'Continuar',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: Color(0xFF0D4032),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.copyWith(
                          color: Colors.white,
                        ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
