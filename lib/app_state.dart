import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _note = prefs.getStringList('ff_note') ?? _note;
    });
    _safeInit(() {
      _document = prefs
              .getStringList('ff_document')
              ?.map((path) => path.ref)
              .toList() ??
          _document;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _note = [];
  List<String> get note => _note;
  set note(List<String> value) {
    _note = value;
    prefs.setStringList('ff_note', value);
  }

  void addToNote(String value) {
    _note.add(value);
    prefs.setStringList('ff_note', _note);
  }

  void removeFromNote(String value) {
    _note.remove(value);
    prefs.setStringList('ff_note', _note);
  }

  void removeAtIndexFromNote(int index) {
    _note.removeAt(index);
    prefs.setStringList('ff_note', _note);
  }

  void updateNoteAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _note[index] = updateFn(_note[index]);
    prefs.setStringList('ff_note', _note);
  }

  void insertAtIndexInNote(int index, String value) {
    _note.insert(index, value);
    prefs.setStringList('ff_note', _note);
  }

  List<DocumentReference> _document = [];
  List<DocumentReference> get document => _document;
  set document(List<DocumentReference> value) {
    _document = value;
    prefs.setStringList('ff_document', value.map((x) => x.path).toList());
  }

  void addToDocument(DocumentReference value) {
    _document.add(value);
    prefs.setStringList('ff_document', _document.map((x) => x.path).toList());
  }

  void removeFromDocument(DocumentReference value) {
    _document.remove(value);
    prefs.setStringList('ff_document', _document.map((x) => x.path).toList());
  }

  void removeAtIndexFromDocument(int index) {
    _document.removeAt(index);
    prefs.setStringList('ff_document', _document.map((x) => x.path).toList());
  }

  void updateDocumentAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _document[index] = updateFn(_document[index]);
    prefs.setStringList('ff_document', _document.map((x) => x.path).toList());
  }

  void insertAtIndexInDocument(int index, DocumentReference value) {
    _document.insert(index, value);
    prefs.setStringList('ff_document', _document.map((x) => x.path).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
