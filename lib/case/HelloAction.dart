import 'package:FlutterDemo/model/Case.dart';
import 'package:FlutterDemo/utils/ToastUtil.dart';

class HelloAction extends ActualAction {

  @override
  doAction() {
//    Scaffold.of(context).showSnackBar(SnackBar(
//      content: Text('Hello world'),
//    ));
    ToastUtil.toast('Hello world');
  }
}