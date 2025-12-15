import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';

Future taptohome(BuildContext context) async {
  FFAppState().selectedKey = 'kelas_drawer';
  FFAppState().update(() {});

  context.pushNamed(HomePageWidget.routeName);
}
