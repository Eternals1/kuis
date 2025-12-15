import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Sandi widget.
  FocusNode? sandiFocusNode;
  TextEditingController? sandiTextController;
  late bool sandiVisibility;
  String? Function(BuildContext, String?)? sandiTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sandiVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    sandiFocusNode?.dispose();
    sandiTextController?.dispose();
  }
}
