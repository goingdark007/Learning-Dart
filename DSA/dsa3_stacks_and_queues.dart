

void main () {

  /// Last in first out LIFO
  List<int> stack = [];

  // Push operation
  stack.add(1);
  stack.add(2);
  stack.add(3);
  print('Stack after pushes: $stack');

  // Pop operation
  int poppedValue = stack.removeLast();
  print('Popped value: $poppedValue');
  print('Stack after pop: $stack');

  // Peek operation
  int peekValue = stack.last;
  print('Peek value: $peekValue');
  print('Stack after peek: $stack');


  /// First in first out FIFO
  List<int> queue = [];
  // Enqueue operation
  queue.add(1);
  queue.add(2);
  queue.add(3);
  print('Queue after enqueues: $queue');
  // Dequeue operation
  int dequeuedValue = queue.removeAt(0);
  print('Dequeued value: $dequeuedValue');
  print('Queue after dequeue: $queue');

  // Peek operation
  print('Queue peek value: ${queue.first}');


}
