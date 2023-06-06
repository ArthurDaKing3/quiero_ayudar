import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/post_detalles/post_detalles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'post_busquedas_model.dart';
export 'post_busquedas_model.dart';

class PostBusquedasWidget extends StatefulWidget {
  const PostBusquedasWidget({
    Key? key,
    required this.busquedasRef,
    required this.busqueda,
  }) : super(key: key);

  final List<PublicacionesRecord>? busquedasRef;
  final String? busqueda;

  @override
  _PostBusquedasWidgetState createState() => _PostBusquedasWidgetState();
}

class _PostBusquedasWidgetState extends State<PostBusquedasWidget> {
  late PostBusquedasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PostBusquedasModel());
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: FlutterFlowTheme.of(context).secondary),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '${widget.busquedasRef?.where((e) => (String busqueda, String tags) {
                          return tags
                                  .toLowerCase()
                                  .contains(busqueda.toLowerCase())
                              ? true
                              : false;
                        }(widget.busqueda!, '${e.fundacion}${e.encabezado}${e.descripcion}${e.tags}')).toList()?.length?.toString()}',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Overpass',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                  ),
                  if (widget.busquedasRef
                          ?.where((e) => (String busqueda, String tags) {
                                return tags
                                        .toLowerCase()
                                        .contains(busqueda.toLowerCase())
                                    ? true
                                    : false;
                              }(widget.busqueda!,
                                  '${e.fundacion}${e.encabezado}${e.descripcion}${e.tags}'))
                          .toList()
                          ?.length ==
                      1)
                    Text(
                      ' Resultado',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Overpass',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                    ),
                  if (widget.busquedasRef
                          ?.where((e) => (String busqueda, String tags) {
                                return tags
                                        .toLowerCase()
                                        .contains(busqueda.toLowerCase())
                                    ? true
                                    : false;
                              }(widget.busqueda!,
                                  '${e.fundacion}${e.encabezado}${e.descripcion}${e.tags}'))
                          .toList()
                          ?.length !=
                      1)
                    Text(
                      ' Resultados',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Overpass',
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    ' para \"${widget.busqueda}\"',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Overpass',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                  ),
                ],
              ),
            ),
            Builder(
              builder: (context) {
                final busquedasRef = widget.busquedasRef!
                    .where((e) => (String busqueda, String tags) {
                          return tags
                                  .toLowerCase()
                                  .contains(busqueda.toLowerCase())
                              ? true
                              : false;
                        }(widget.busqueda!,
                            '${e.fundacion}${e.encabezado}${e.descripcion}${e.tags}'))
                    .toList();
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children:
                      List.generate(busquedasRef.length, (busquedasRefIndex) {
                    final busquedasRefItem = busquedasRef[busquedasRefIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x2E000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PostDetallesWidget(
                                  postRef: busquedasRefItem,
                                ),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                                child: Image.network(
                                  busquedasRefItem.imagenBanner!,
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height: 200.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 10.0, 10.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        child: Image.network(
                                          busquedasRefItem.fundacionLogo!,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.15,
                                          height: 60.0,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        busquedasRefItem.encabezado!,
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xFF090F13),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Text(
                                          busquedasRefItem.descripcion!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF95A1AC),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 3.0,
                                thickness: 1.0,
                                color: Color(0xFFF1F4F8),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 5.0, 5.0),
                                                child: Icon(
                                                  Icons.maps_ugc_sharp,
                                                  color: Color(0xFF95A1AC),
                                                  size: 25.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Más Info.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF95A1AC),
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.ios_share,
                                          color: Color(0xFF95A1AC),
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
