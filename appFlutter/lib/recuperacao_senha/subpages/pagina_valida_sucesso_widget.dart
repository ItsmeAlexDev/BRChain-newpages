import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagina_valida_sucesso_model.dart';
export 'pagina_valida_sucesso_model.dart';

class PaginaValidaSucessoWidget extends StatefulWidget {
  const PaginaValidaSucessoWidget({super.key});

  @override
  State<PaginaValidaSucessoWidget> createState() =>
      _PaginaValidaSucessoWidgetState();
}

class _PaginaValidaSucessoWidgetState extends State<PaginaValidaSucessoWidget> {
  late PaginaValidaSucessoModel _model;

  @override
  void initState() {
    super.initState();
    _model = PaginaValidaSucessoModel();
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
            height: 230,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'Nova senha criada\ncom sucesso!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 35),
                FFButtonWidget(
                  onPressed: () {
                    //TODO Código para retornar a página principal
                    print("Redireciona para a página principal");
                  },
                  text: 'Voltar para a página inicial',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: Color(0xFF0D4032),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.copyWith(
                          color: Colors.white,
                        ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
