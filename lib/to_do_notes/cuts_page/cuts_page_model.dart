import '/flutter_flow/flutter_flow_util.dart';
import 'cuts_page_widget.dart' show CutsPageWidget;
import 'package:flutter/material.dart';

class CutsPageModel extends FlutterFlowModel<CutsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '13ucgvef' /* Field is required... */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'xvi22cf1' /* More letters Required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
