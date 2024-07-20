import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Home'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_Home_ON_INIT_STATE');
      logFirebaseEvent('Home_wait__delay');
      await Future.delayed(const Duration(milliseconds: 60000));
      logFirebaseEvent('Home_navigate_to');

      context.pushNamed('Adspage');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '1v31q73v' /* My Note/Habits */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Allura',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent('HOME_PAGE_Icon_dosu6p7b_ON_TAP');
                          logFirebaseEvent('Icon_navigate_to');

                          context.pushNamed('AskAI');
                        },
                        child: Icon(
                          Icons.assistant,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 35.0,
                        ),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 8.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).accent1,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 15.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('HOME_PAGE_add_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('CutsPage');
                      },
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: FlutterFlowAdBanner(
                  height: 100.0,
                  showsTestAd: true,
                  androidAdUnitID: 'ca-app-pub-8843970042319638/9505370561',
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final mynotes =
                        FFAppState().note.toList().take(100).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: mynotes.length,
                      itemBuilder: (context, mynotesIndex) {
                        final mynotesItem = mynotes[mynotesIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'HOME_PAGE_Container_m0y4gnlf_ON_TAP');
                            logFirebaseEvent('Container_navigate_to');

                            context.pushNamed(
                              'InspectPage',
                              queryParameters: {
                                'notesitem': serializeParam(
                                  mynotesItem,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xFFE5E7EB),
                                  offset: Offset(
                                    0.0,
                                    1.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            mynotesItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF15161E),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'snxwjvjx' /* 5 mins ago */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF15161E),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Expanded(
                                      flex: 3,
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mj2idr41' /* Head of Design */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF15161E),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: 570.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: const Color(0xFFF1F4F8),
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ronwcidy' /* Donate Now */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'b8ibp1gj' /* Feel Free to Donate */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent('HOME_PAGE_DONATE_BTN_ON_TAP');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed('DonationPage');
                          },
                          text: FFLocalizations.of(context).getText(
                            'g3xytgjf' /* Donate */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('HOME_PAGE_Container_wwsgtu45_ON_TAP');
                    logFirebaseEvent('Container_launch_u_r_l');
                    await launchURL(
                        'https://whop.com/branded-press/?%3Fpass=prod_m6nxeY0XTTwN1');
                  },
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 570.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: const Color(0xFFF1F4F8),
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '8qf3ykdd' /* Get Best Book Ever */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7jxz0lmp' /* Get Access */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.bookOpen,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: FlutterFlowLanguageSelector(
                        width: 200.0,
                        backgroundColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        borderColor: Colors.transparent,
                        dropdownIconColor: Colors.white,
                        borderRadius: 8.0,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 13.0,
                        ),
                        hideFlags: true,
                        flagSize: 24.0,
                        flagTextGap: 8.0,
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent('HOME_PAGE_LOG_OUT_BTN_ON_TAP');
                            logFirebaseEvent('Button_auth');
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                'auth_WelcomeScreen', context.mounted);
                          },
                          text: FFLocalizations.of(context).getText(
                            'e93hnxy1' /* LogOut */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
