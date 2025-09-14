import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? fullAppNavigationController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullAppNavigationController?.finish();
  }
}
