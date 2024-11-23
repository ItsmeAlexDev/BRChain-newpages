import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagina_valida_codigo_model.dart';
export 'pagina_valida_codigo_model.dart';

class PaginaValidaCodigoWidget extends StatefulWidget {
  const PaginaValidaCodigoWidget({super.key});

  @override
  State<PaginaValidaCodigoWidget> createState() =>
      _PaginaValidaCodigoWidgetState();
}

class _PaginaValidaCodigoWidgetState extends State<PaginaValidaCodigoWidget> {
  late PaginaValidaCodigoModel _model;

  List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void initState() {
    super.initState();
    _model = PaginaValidaCodigoModel();
    _model.initState(context);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
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
            height: 476,
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
                const SizedBox(height: 30),
                Text(
                  'Recuperação de senha',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Um token foi enviado para o seu email\npara recuperação de senha.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Digite o código abaixo',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(4, (index) {
                    return SizedBox(
                      width: 54,
                      height: 66,
                      child: TextField(
                        controller: controllers[index],
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          filled: true,
                          fillColor: const Color(0xFFDFDFDF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 45),
                FFButtonWidget(
                  onPressed: () {
                    //TODO Usar o código inserido para poder verificar a conta
                    //e prosseguir com a recuperação de conta/mudança de senha
                    String codigo = controllers
                        .map((controller) => controller.text)
                        .join('');
                    print('Os quatro digitos foram: $codigo');
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
