import '/components/title_with_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_copy_widget.dart' show EditProfileCopyWidget;
import 'package:flutter/material.dart';

class EditProfileCopyModel extends FlutterFlowModel<EditProfileCopyWidget> {
  ///  Local state fields for this page.

  bool unsavedChanges = false;

  ///  State fields for stateful widgets in this page.

  // Model for titleWithSubtitle component.
  late TitleWithSubtitleModel titleWithSubtitleModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {
    titleWithSubtitleModel =
        createModel(context, () => TitleWithSubtitleModel());
  }

  @override
  void dispose() {
    titleWithSubtitleModel.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
