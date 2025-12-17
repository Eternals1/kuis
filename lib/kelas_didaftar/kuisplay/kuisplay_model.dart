import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'kuisplay_widget.dart' show KuisplayWidget;
import 'package:flutter/material.dart';

class KuisplayModel extends FlutterFlowModel<KuisplayWidget> {
  ///  Local state fields for this page.

  int? currentIndex = 1;

  int? selectedIndex = -1;

  DocumentReference? attempRef;

  int? totalscore = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Kuisplay widget.
  AttemptsRecord? documentsoal;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
