import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'footer_menu_model.dart';
export 'footer_menu_model.dart';

class FooterMenuWidget extends StatefulWidget {
  const FooterMenuWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
  });

  final String? parameter1;
  final DocumentReference? parameter2;

  @override
  State<FooterMenuWidget> createState() => _FooterMenuWidgetState();
}

class _FooterMenuWidgetState extends State<FooterMenuWidget> {
  late FooterMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().selectedKey = 'Kelas_drawer';
                    safeSetState(() {});

                    context.pushNamed(HomePageWidget.routeName);
                  },
                  child: Icon(
                    Icons.book,
                    color: FFAppState().selectedKey == 'Kelas_drawer'
                        ? FlutterFlowTheme.of(context).tertiary
                        : Color(0xFF080808),
                    size: 40.0,
                  ),
                ),
                Text(
                  'Kelas',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ],
            ),
            if (widget.parameter1 == currentUserUid)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(13.0, 0.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      TambahkuispageWidget.routeName,
                      queryParameters: {
                        'kelasRef': serializeParam(
                          widget.parameter2,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).customColor2,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF1899D6),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          30.0, 12.0, 30.0, 12.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().selectedKey = 'Partisipasionicon';
                    safeSetState(() {});

                    context.pushNamed(
                      PartisipanWidget.routeName,
                      queryParameters: {
                        'kelasRef': serializeParam(
                          widget.parameter2,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Icon(
                    Icons.person,
                    color: FFAppState().selectedKey == 'PartisipationIcon'
                        ? FlutterFlowTheme.of(context).tertiary
                        : Color(0xFF0C0C0C),
                    size: 40.0,
                  ),
                ),
                Text(
                  'Partisipan',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ],
            ),
          ].divide(SizedBox(width: 70.0)),
        ),
      ),
    );
  }
}
