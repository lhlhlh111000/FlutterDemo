class Case {

  String name;

  ActualAction action;
  
  Case(this.name, {this.action});

  @override
  String toString() {
    return 'Case name: $name, action is : $action';
  }
}

abstract class ActualAction {

  doAction();

}