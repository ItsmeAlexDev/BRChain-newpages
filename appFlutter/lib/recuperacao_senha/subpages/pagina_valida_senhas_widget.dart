import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagina_valida_senhas_model.dart';
export 'pagina_valida_senhas_model.dart';

class PaginaValidaSenhasWidget extends StatefulWidget {
  const PaginaValidaSenhasWidget({super.key});

  @override
  State<PaginaValidaSenhasWidget> createState() =>
      _PaginaValidaSenhasWidgetState();
}

class _PaginaValidaSenhasWidgetState extends State<PaginaValidaSenhasWidget> {
  late PaginaValidaSenhasModel _model;

  TextEditingController controller_1 = TextEditingController();
  TextEditingController controller_2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _model = PaginaValidaSenhasModel();
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
            height: 537,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
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
                const SizedBox(height: 15),
                Text(
                  'Crie uma nova senha para sua conta.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 55),
                TextFormField(
                  controller: controller_1,
                  decoration: InputDecoration(
                    labelText: 'Nova senha',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                TextFormField(
                  controller: controller_2,
                  decoration: InputDecoration(
                    labelText: 'Confirme sua senha',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                FFButtonWidget(
                  onPressed: () {
                    //TODO Criar código para comparação, verificação e posterior atualização das senhas

                    String senha1 = controller_1.text ?? '';
                    String senha2 = controller_2.text ?? '';

                    print(
                        "as senhas foram:\n -> senha 1: $senha1\n -> senha 2: $senha2");
                  },
                  text: 'Confimar',
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
