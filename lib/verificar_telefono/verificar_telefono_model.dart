import '/auth/firebase_auth/auth_util.dart';
import '/editar_perfil/editar_perfil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerificarTelefonoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SmsCodeTextField widget.
  TextEditingController? smsCodeTextFieldController;
  String? Function(BuildContext, String?)? smsCodeTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    smsCodeTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
