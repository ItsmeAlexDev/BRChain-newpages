import '/flutter_flow/flutter_flow_util.dart';
import 'recuperacao_senha_widget.dart' show RecuperacaoSenhaWidget;
import 'package:flutter/material.dart';

class RecuperacaoSenhaModel extends FlutterFlowModel<RecuperacaoSenhaWidget> {
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
