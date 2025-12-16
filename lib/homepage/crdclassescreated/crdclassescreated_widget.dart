import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/crdclassescreate_optionsheet/crdclassescreate_optionsheet_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'crdclassescreated_model.dart';
export 'crdclassescreated_model.dart';

class CrdclassescreatedWidget extends StatefulWidget {
  const CrdclassescreatedWidget({super.key});

  @override
  State<CrdclassescreatedWidget> createState() =>
      _CrdclassescreatedWidgetState();
}

class _CrdclassescreatedWidgetState extends State<CrdclassescreatedWidget> {
  late CrdclassescreatedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrdclassescreatedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<KelasRecord>>(
      stream: queryKelasRecord(
        queryBuilder: (kelasRecord) => kelasRecord.where(
          'teacherID',
          isEqualTo: currentUserUid,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<KelasRecord> containerKelasRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerKelasRecord = containerKelasRecordList.isNotEmpty
            ? containerKelasRecordList.first
            : null;

        return InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(KelascreatedWidget.routeName);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            containerKelasRecord?.namakelas,
                            'kelas',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: Color(0xFF444444),
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            containerKelasRecord?.teacherName,
                            'nama guru',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF2B2B2B),
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 30.0)),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: FlutterFlowIconButton(
                          borderRadius: 16.0,
                          buttonSize: 32.0,
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xFF2B2B2B),
                            size: 20.0,
                          ),
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: CrdclassescreateOptionsheetWidget(),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xFF2B2B2B),
                              size: 16.0,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    containerKelasRecord?.studentCount
                                        .toString(),
                                    '10',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF2B2B2B),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Text(
                                  ' Murid',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF2B2B2B),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ].divide(SizedBox(width: 14.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
