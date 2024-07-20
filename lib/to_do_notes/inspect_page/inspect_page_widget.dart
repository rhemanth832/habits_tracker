import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'inspect_page_model.dart';
export 'inspect_page_model.dart';

class InspectPageWidget extends StatefulWidget {
  const InspectPageWidget({
    super.key,
    required this.notesitem,
  });

  final String? notesitem;

  @override
  State<InspectPageWidget> createState() => _InspectPageWidgetState();
}

class _InspectPageWidgetState extends State<InspectPageWidget> {
  late InspectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InspectPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'InspectPage'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('INSPECT_PAGE_PAGE_Icon_frqo56re_ON_TAP');
            logFirebaseEvent('Icon_navigate_back');
            context.pop();
          },
          child: const Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFF0F1113),
            size: 32.0,
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
              child: FlutterFlowAdBanner(
                height: 100.0,
                showsTestAd: true,
                androidAdUnitID: 'ca-app-pub-8843970042319638/9505370561',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.notesitem!,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF57636C),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  const Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: Color(0xFFDBE2E7),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('INSPECT_PAGE_PAGE_ButtonPrimary_ON_TAP');
                    logFirebaseEvent('ButtonPrimary_update_app_state');
                    setState(() {
                      FFAppState().removeFromNote(widget.notesitem!);
                    });
                    logFirebaseEvent('ButtonPrimary_navigate_back');
                    context.safePop();
                  },
                  text: FFLocalizations.of(context).getText(
                    'xk5yfle8' /* Delete */,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF4B39EF),
                    textStyle:
                        FlutterFlowTheme.of(context).headlineSmall.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
