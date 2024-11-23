import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagina_invalida_model.dart';
export 'pagina_invalida_model.dart';

class PaginaInvalidaWidget extends StatefulWidget {
  const PaginaInvalidaWidget({super.key});

  @override
  State<PaginaInvalidaWidget> createState() => _PaginaInvalidaWidgetState();
}

class _PaginaInvalidaWidgetState extends State<PaginaInvalidaWidget> {
  late PaginaInvalidaModel _model;

  @override
  void initState() {
    super.initState();
    _model = PaginaInvalidaModel();
    _model.initState(context);
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
            width: 382,
            height: 430,
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
                const SizedBox(height: 35),
                Text(
                  'Recuperação de senha',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 20),
                Text(
                  //TODO substituir o "[EMAIL]" pelo email em questão.
                  'Não encontramos nenhuma conta com email\n[EMAIL] vinculado.\nDeseja criar uma nova conta?',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 45),
                FFButtonWidget(
                  onPressed: () {
                    //TODO redirecionar usuário para a tela de cadastro.
                    print("Returna para a tela de cadastro");
                  },
                  text: 'Cadastre-se',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: Color(0xFF56636C),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.copyWith(
                          color: Colors.white,
                        ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 15),
                FFButtonWidget(
                  onPressed: () {
                    //TODO redirecionar usuário para a tela de recuperação de senha.
                    print("Returna para a tela de recuperação de senha");
                  },
                  text: 'Digitar o email novamente',
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
