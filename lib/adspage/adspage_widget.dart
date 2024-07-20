import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'adspage_model.dart';
export 'adspage_model.dart';

class AdspageWidget extends StatefulWidget {
  const AdspageWidget({super.key});

  @override
  State<AdspageWidget> createState() => _AdspageWidgetState();
}

class _AdspageWidgetState extends State<AdspageWidget> {
  late AdspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdspageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Adspage'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('ADSarrow_back_rounded_ICN_ON_TAP');
              logFirebaseEvent('IconButton_wait__delay');
              await Future.delayed(const Duration(milliseconds: 10000));
              logFirebaseEvent('IconButton_show_snack_bar');
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Go Back',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).error,
                ),
              );
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'nonehlp0' /* Wait For 10 Seconds */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Allura',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 25.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: FlutterFlowAdBanner(
                        width: 320.0,
                        height: 480.0,
                        showsTestAd: true,
                        androidAdUnitID:
                            'ca-app-pub-8843970042319638/7701851228',
                      ),
                    ),
                ],
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tabletLandscape: false,
              ))
                const Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: FlutterFlowAdBanner(
                    width: 768.0,
                    height: 1024.0,
                    showsTestAd: true,
                    androidAdUnitID: 'ca-app-pub-8843970042319638/7701851228',
                  ),
                ),
              FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('ADSPAGE_PAGE_GO_BACK_BTN_ON_TAP');
                  logFirebaseEvent('Button_wait__delay');
                  await Future.delayed(const Duration(milliseconds: 10000));
                  logFirebaseEvent('Button_show_snack_bar');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Go Back',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                      ),
                      duration: const Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).error,
                    ),
                  );
                  logFirebaseEvent('Button_navigate_back');
                  context.safePop();
                },
                text: FFLocalizations.of(context).getText(
                  'uy5ttdp8' /* Go Back */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
