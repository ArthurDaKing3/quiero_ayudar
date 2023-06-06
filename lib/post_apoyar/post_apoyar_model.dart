import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/counter_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/post_donacion/post_donacion_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostApoyarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.

  Map<ObjetosDonacionStruct, bool> checkboxValueMap = {};
  List<ObjetosDonacionStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Models for counter dynamic component.
  late FlutterFlowDynamicModels<CounterModel> counterModels;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DonacionesRecord? donacionCreada;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    counterModels = FlutterFlowDynamicModels(() => CounterModel());
  }

  void dispose() {
    counterModels.dispose();
  }

  /// Additional helper methods are added here.

}
