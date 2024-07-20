import '/flutter_flow/flutter_flow_util.dart';
import 'adspage_widget.dart' show AdspageWidget;
import 'package:flutter/material.dart';

class AdspageModel extends FlutterFlowModel<AdspageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
