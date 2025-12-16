import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/add_class_bottom_sheet/add_class_bottom_sheet_widget.dart';
import '/homepage/crdclassesjoined_optionsheet/crdclassesjoined_optionsheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

/// Class Management Dashboard
class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedKey = 'Kelas_drawer';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        floatingActionButton: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: AddClassBottomSheetWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          child: Container(
            width: 56.0,
            height: 56.0,
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
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerComponentModel,
            updateCallback: () => safeSetState(() {}),
            child: DrawerComponentWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  buttonSize: 45.0,
                  icon: Icon(
                    Icons.menu_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 29.0,
                  ),
                  onPressed: () async {
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/kuis-6vzse7/assets/gkcx4g3y7u3z/logo_KUISKU.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF59822),
                    shape: BoxShape.circle,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: SvgPicture.asset(
                      'assets/images/Ciprut_login.svg',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE569),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              child: Image.asset(
                                                'assets/images/3jymd7.png',
                                                width: 32.0,
                                                height: 37.3,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Kelas Terdaftar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF2E2E2E),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<
                                                        List<KelasRecord>>(
                                                      stream: queryKelasRecord(
                                                        queryBuilder:
                                                            (kelasRecord) =>
                                                                kelasRecord
                                                                    .where(
                                                          'studentsID',
                                                          arrayContains:
                                                              currentUserUid,
                                                        ),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<KelasRecord>
                                                            kelasterdaftartxtKelasRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final kelasterdaftartxtKelasRecord =
                                                            kelasterdaftartxtKelasRecordList
                                                                    .isNotEmpty
                                                                ? kelasterdaftartxtKelasRecordList
                                                                    .first
                                                                : null;

                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            kelasterdaftartxtKelasRecord
                                                                ?.studentCount
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF2E2E2E),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      'Kelas',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: Color(
                                                                0xFF2E2E2E),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 2.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                              child: Image.asset(
                                                'assets/images/a4b3hb.png',
                                                width: 32.0,
                                                height: 32.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Kelas diajarkan',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF2E2E2E),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    StreamBuilder<
                                                        List<KelasRecord>>(
                                                      stream: queryKelasRecord(
                                                        queryBuilder:
                                                            (kelasRecord) =>
                                                                kelasRecord
                                                                    .where(
                                                          'teacherID',
                                                          isEqualTo:
                                                              currentUserUid,
                                                        ),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<KelasRecord>
                                                            kelasdiajarkantxtKelasRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final kelasdiajarkantxtKelasRecord =
                                                            kelasdiajarkantxtKelasRecordList
                                                                    .isNotEmpty
                                                                ? kelasdiajarkantxtKelasRecordList
                                                                    .first
                                                                : null;

                                                        return Text(
                                                          valueOrDefault<
                                                              String>(
                                                            kelasdiajarkantxtKelasRecord
                                                                ?.studentCount
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF2E2E2E),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      'Kelas',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: Color(
                                                                0xFF2E2E2E),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 2.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 9.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18.0, 0.0, 0.0, 0.0),
                                child: SvgPicture.asset(
                                  'assets/images/Ciprut_login.svg',
                                  width: 120.0,
                                  height: 120.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  StreamBuilder<List<KelasRecord>>(
                    stream: queryKelasRecord(
                      queryBuilder: (kelasRecord) => kelasRecord
                          .where(
                            'teacherID',
                            isEqualTo: currentUserUid,
                          )
                          .orderBy('createdAt'),
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
                      List<KelasRecord> listviewcrdcreatedKelasRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listviewcrdcreatedKelasRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 8.0),
                        itemBuilder: (context, listviewcrdcreatedIndex) {
                          final listviewcrdcreatedKelasRecord =
                              listviewcrdcreatedKelasRecordList[
                                  listviewcrdcreatedIndex];
                          return Material(
                            color: Colors.transparent,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              listviewcrdcreatedKelasRecord
                                                  .namakelas,
                                              'nama kelas',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: Color(0xFF444444),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumIsCustom,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listviewcrdcreatedKelasRecord
                                                  .teacherName,
                                              'nama guru ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF2B2B2B),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 30.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
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
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CrdclassesjoinedOptionsheetWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
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
                                                      listviewcrdcreatedKelasRecord
                                                          .studentCount
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF2B2B2B),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF2B2B2B),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                    },
                  ),
                  StreamBuilder<List<KelasRecord>>(
                    stream: queryKelasRecord(
                      queryBuilder: (kelasRecord) => kelasRecord
                          .where(
                            'studentsID',
                            arrayContains: currentUserUid,
                          )
                          .orderBy('createdAt'),
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
                      List<KelasRecord> listviewcrdjoinedKelasRecordList =
                          snapshot.data!;

                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listviewcrdjoinedKelasRecordList.length,
                        separatorBuilder: (_, __) => SizedBox(height: 8.0),
                        itemBuilder: (context, listviewcrdjoinedIndex) {
                          final listviewcrdjoinedKelasRecord =
                              listviewcrdjoinedKelasRecordList[
                                  listviewcrdjoinedIndex];
                          return Material(
                            color: Colors.transparent,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              listviewcrdjoinedKelasRecord
                                                  .namakelas,
                                              'nama kelas',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily,
                                                  color: Color(0xFF444444),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumIsCustom,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listviewcrdjoinedKelasRecord
                                                  .teacherName,
                                              'nama guru ',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF2B2B2B),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 30.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
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
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CrdclassesjoinedOptionsheetWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
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
                                                      listviewcrdjoinedKelasRecord
                                                          .studentCount
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF2B2B2B),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF2B2B2B),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
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
                    },
                  ),
                ].divide(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
