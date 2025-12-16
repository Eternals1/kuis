import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/crdclassesjoined_optionsheet/crdclassesjoined_optionsheet_widget.dart';
import 'package:flutter/material.dart';
import 'crdclassesjoined_model.dart';
export 'crdclassesjoined_model.dart';

class CrdclassesjoinedWidget extends StatefulWidget {
  const CrdclassesjoinedWidget({super.key});

  @override
  State<CrdclassesjoinedWidget> createState() => _CrdclassesjoinedWidgetState();
}

class _CrdclassesjoinedWidgetState extends State<CrdclassesjoinedWidget> {
  late CrdclassesjoinedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrdclassesjoinedModel());

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
          'studentsID',
          arrayContains: currentUserUid,
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
        List<KelasRecord> crdclassesjoinedKelasRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final crdclassesjoinedKelasRecord =
            crdclassesjoinedKelasRecordList.isNotEmpty
                ? crdclassesjoinedKelasRecordList.first
                : null;

        return Container(
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
                          crdclassesjoinedKelasRecord?.namakelas,
                          'nama kelas',
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
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
                          crdclassesjoinedKelasRecord?.teacherName,
                          'nama guru ',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
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
                                child: CrdclassesjoinedOptionsheetWidget(),
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
                                  crdclassesjoinedKelasRecord?.studentCount
                                      .toString(),
                                  '0',
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
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
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
        );
      },
    );
  }
}
