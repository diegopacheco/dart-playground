import 'dart:collection';

void main() {
  var queue = Queue<String>();
  queue.addAll(['task-1', 'task-2', 'task-3']);
  queue.addLast('task-4');
  queue.addFirst('task-0');
  print('Queue: $queue');

  var first = queue.removeFirst();
  print('Dequeued: $first');
  print('After dequeue: $queue');

  var last = queue.removeLast();
  print('Removed last: $last');
  print('After remove: $queue');

  print('Front: ${queue.first}, Back: ${queue.last}');
  print('Length: ${queue.length}');
  print('Contains task-2? ${queue.contains('task-2')}');

  var filtered = Queue.of(queue.where((t) => t.contains('2') || t.contains('3')));
  print('Filtered: $filtered');

  queue.clear();
  print('Cleared: $queue, isEmpty: ${queue.isEmpty}');
}
