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
import 'post_apoyar_model.dart';
export 'post_apoyar_model.dart';

class PostApoyarWidget extends StatefulWidget {
  const PostApoyarWidget({
    Key? key,
    required this.postRef,
  }) : super(key: key);

  final PublicacionesRecord? postRef;

  @override
  _PostApoyarWidgetState createState() => _PostApoyarWidgetState();
}

class _PostApoyarWidgetState extends State<PostApoyarWidget> {
  late PostApoyarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostApoyarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(18.0, 50.0, 0.0, 12.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: FlutterFlowTheme.of(context).grayDark,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            valueOrDefault<String>(
                              widget.postRef!.fundacionLogo,
                              'fundacion-logo',
                            ),
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 0.0, 4.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.postRef!.fundacion,
                              'fundacion-logo',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Overpass',
                                  color: FlutterFlowTheme.of(context).darkBG,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 4.0, 4.0),
                            child: Icon(
                              Icons.schedule,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.postRef!.horario,
                                'horario',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Overpass',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 4.0, 4.0),
                            child: Icon(
                              Icons.location_on_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.postRef!.direccion,
                                'direccion',
                              ).maybeHandleOverflow(
                                maxChars: 20,
                                replacement: '…',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Overpass',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.network(
                  valueOrDefault<String>(
                    widget.postRef!.imagenBanner,
                    'imagen-banner',
                  ),
                  width: double.infinity,
                  height: 170.0,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xB3090F13), Color(0x00090F13)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 28.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.87,
                      height: 2.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE7EEF9),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 14.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quiero apoyar con:',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Overpass',
                                    color: FlutterFlowTheme.of(context).darkBG,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final objetosDonacion = widget.postRef!.objetosDonacion!
                          .toList()
                          .map((e) => e)
                          .toList();
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(objetosDonacion.length,
                            (objetosDonacionIndex) {
                          final objetosDonacionItem =
                              objetosDonacion[objetosDonacionIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 4.0, 0.0),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .grayLines,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValueMap[
                                                objetosDonacionItem] ??= false,
                                            onChanged: (newValue) async {
                                              setState(() =>
                                                  _model.checkboxValueMap[
                                                          objetosDonacionItem] =
                                                      newValue!);
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          objetosDonacionItem.nombreObjeto!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Overpass',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.counterModels.getModel(
                                    objetosDonacionItem.idObjeto!.toString(),
                                    objetosDonacionIndex,
                                  ),
                                  updateCallback: () => setState(() {}),
                                  child: CounterWidget(
                                    key: Key(
                                      'Keyxn9_${objetosDonacionItem.idObjeto!.toString()}',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 40.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Donación'),
                                      content: Text(
                                          'Recuerda que una vez confirmes la donación tendrás 1 semana para brindarla a la asociación'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Confirmar'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              final donacionesCreateData = {
                                ...createDonacionesRecordData(
                                  estatus: 0,
                                  fechaDonacion: getCurrentTimestamp,
                                  fechaEntrega: functions.fechaEntrega(),
                                  fundacion: widget.postRef!.fundacion,
                                  fundacionLogo: widget.postRef!.fundacionLogo,
                                  direccion: widget.postRef!.direccion,
                                  horario: widget.postRef!.horario,
                                  idDonacion:
                                      random_data.randomInteger(2000, 3000),
                                ),
                                'nombre-objetos': widget
                                    .postRef!.objetosDonacion!
                                    .toList()
                                    .map((e) => e.nombreObjeto)
                                    .withoutNulls
                                    .toList(),
                                'cantidad-objetos':
                                    _model.counterModels.getValues(
                                  (m) => m.countControllerValue,
                                ),
                              };
                              var donacionesRecordReference =
                                  DonacionesRecord.collection.doc();
                              await donacionesRecordReference
                                  .set(donacionesCreateData);
                              _model.donacionCreada =
                                  DonacionesRecord.getDocumentFromData(
                                      donacionesCreateData,
                                      donacionesRecordReference);
                              _shouldSetState = true;
                            } else {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PostDonacionWidget(
                                  postRef: widget.postRef!,
                                ),
                              ),
                            );
                            if (_shouldSetState) setState(() {});
                          },
                          text: 'Apoyar',
                          icon: FaIcon(
                            FontAwesomeIcons.handsHelping,
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Overpass',
                                  color: Colors.white,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
