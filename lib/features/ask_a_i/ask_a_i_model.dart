import '/flutter_flow/flutter_flow_util.dart';
import 'ask_a_i_widget.dart' show AskAIWidget;
import 'package:flutter/material.dart';

class AskAIModel extends FlutterFlowModel<AskAIWidget> {
  ///  Local state fields for this page.

  String? notes = ' ';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - chatGPT] action in Button widget.
  String? chatgptresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
