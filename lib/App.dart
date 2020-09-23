
import 'package:FlutterDemo/case/HelloAction.dart';
import 'package:FlutterDemo/model/Case.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _MainPage(),
    );
  }
}

class _MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _MainPageState();
  }

}

class _MainPageState extends State<_MainPage> {

  List<Case> _cases =  List();

  @override
  void initState() {
    super.initState();
    _cases.add(Case('Hello', action: new HelloAction()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView.builder(
          itemBuilder: _itemBuilder,
          itemCount: _cases.length,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return GestureDetector(
      key: Key(index.toString()),
      behavior: HitTestBehavior.translucent,
      onTap: () => _handleAction(_cases[index]),
      child: Container(
        padding: new EdgeInsets.all(14),
        child: Text(
          _cases[index].name,
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
      ),
    );
  }

  _handleAction(Case action) {
    if(null == action.action) {
      return;
    }

    action.action.doAction();
  }
}