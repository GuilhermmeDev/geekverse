import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/comunidade_not/comunidade_not_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'list_community_widget.dart' show ListCommunityWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListCommunityModel extends FlutterFlowModel<ListCommunityWidget> {
  ///  Local state fields for this page.

  List<CommunityRecord> searchCommunity = [];
  void addToSearchCommunity(CommunityRecord item) => searchCommunity.add(item);
  void removeFromSearchCommunity(CommunityRecord item) =>
      searchCommunity.remove(item);
  void removeAtIndexFromSearchCommunity(int index) =>
      searchCommunity.removeAt(index);
  void insertAtIndexInSearchCommunity(int index, CommunityRecord item) =>
      searchCommunity.insert(index, item);
  void updateSearchCommunityAtIndex(
          int index, Function(CommunityRecord) updateFn) =>
      searchCommunity[index] = updateFn(searchCommunity[index]);

  List<CommunityRecord> communitiesList = [];
  void addToCommunitiesList(CommunityRecord item) => communitiesList.add(item);
  void removeFromCommunitiesList(CommunityRecord item) =>
      communitiesList.remove(item);
  void removeAtIndexFromCommunitiesList(int index) =>
      communitiesList.removeAt(index);
  void insertAtIndexInCommunitiesList(int index, CommunityRecord item) =>
      communitiesList.insert(index, item);
  void updateCommunitiesListAtIndex(
          int index, Function(CommunityRecord) updateFn) =>
      communitiesList[index] = updateFn(communitiesList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in ListCommunity widget.
  List<CommunityRecord>? listCommunity;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
