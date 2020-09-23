import 'package:FlutterDemo/case/HelloAction.dart';
import 'package:FlutterDemo/model/Case.dart';

class CaseFactory {

  static List<Case> cases() {
    List<Case> _cases =  List();
    _cases.add(Case('Hello', action: new HelloAction()));
    return _cases;
  }
}