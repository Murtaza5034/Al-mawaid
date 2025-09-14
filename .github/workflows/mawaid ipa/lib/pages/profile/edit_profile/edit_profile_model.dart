import '/components/title_with_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  bool unsavedChanges = false;

  ///  State fields for stateful widgets in this page.

  // Model for titleWithSubtitle component.
  late TitleWithSubtitleModel titleWithSubtitleModel;

  @override
  void initState(BuildContext context) {
    titleWithSubtitleModel =
        createModel(context, () => TitleWithSubtitleModel());
  }

  @override
  void dispose() {
    titleWithSubtitleModel.dispose();
  }
}
