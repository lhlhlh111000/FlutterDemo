import 'package:FlutterDemo/model/Case.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HelloAction extends ActualAction {

  @override
  doAction() {
//    Scaffold.of(context).showSnackBar(SnackBar(
//      content: Text('Hello world'),
//    ));
    Fluttertoast.showToast(msg: 'Hello world');
  }
}