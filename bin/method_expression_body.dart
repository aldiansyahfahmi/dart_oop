class Computer {
  // ini adalah method expression body
  void startup() => print('Computer is starting');
  void shutdown() => print('Computer is shuting down');
  String getComputerOperationSystem() => 'Linux';
}

void main() {
  var computer = Computer();
  computer.startup();
  computer.shutdown();
  print(computer.getComputerOperationSystem());
}
