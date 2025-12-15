import '/flutter_flow/flutter_flow_util.dart';
import 'join_class_page_widget.dart' show JoinClassPageWidget;
import 'package:flutter/material.dart';

class JoinClassPageModel extends FlutterFlowModel<JoinClassPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Kodekelas widget.
  FocusNode? kodekelasFocusNode;
  TextEditingController? kodekelasTextController;
  String? Function(BuildContext, String?)? kodekelasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    kodekelasFocusNode?.dispose();
    kodekelasTextController?.dispose();
  }
}
