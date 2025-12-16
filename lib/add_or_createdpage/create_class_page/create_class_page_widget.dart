import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_class_page_model.dart';
export 'create_class_page_model.dart';

/// Add Class Form
class CreateClassPageWidget extends StatefulWidget {
  const CreateClassPageWidget({super.key});

  static String routeName = 'CreateClassPage';
  static String routePath = '/createClassPage';

  @override
  State<CreateClassPageWidget> createState() => _CreateClassPageWidgetState();
}

class _CreateClassPageWidgetState extends State<CreateClassPageWidget> {
  late CreateClassPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateClassPageModel());

    _model.namakelasTextController ??= TextEditingController();
    _model.namakelasFocusNode ??= FocusNode();

    _model.kodekelasTextController ??= TextEditingController();
    _model.kodekelasFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 32.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF0F0F0F),
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          title: Text(
            'Tambah Kelas',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Color(0xFF0F0F0F),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 0.0, 6.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.namakelasTextController,
                        focusNode: _model.namakelasFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Nama kelas',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.namakelasTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 0.0, 6.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.kodekelasTextController,
                        focusNode: _model.kodekelasFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Kode kelas',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.kodekelasTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await KelasRecord.collection.doc().set({
                      ...createKelasRecordData(
                        namakelas: _model.namakelasTextController.text,
                        teacherID: currentUserUid,
                        teacherName: currentUserDisplayName,
                        kodeKelas: _model.kodekelasTextController.text,
                        studentCount: 0,
                      ),
                      ...mapToFirestore(
                        {
                          'participantIds': [currentUserUid],
                          'createdAt': FieldValue.serverTimestamp(),
                          'studentsID': ['[ ]'],
                        },
                      ),
                    });

                    context.pushNamed(HomePageWidget.routeName);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'kelas dibuat',
                          style: GoogleFonts.roboto(
                            color: Color(0x00000000),
                            fontSize: 0.0,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF36B3FF),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.0,
                          color: Color(0xFF266E99),
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Tambah Kelas',
                        icon: Icon(
                          Icons.add,
                          size: 30.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x001CB0F6),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
                  .divide(SizedBox(height: 17.0))
                  .addToStart(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
