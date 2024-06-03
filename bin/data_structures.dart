
import 'package:data_structures/structures/binary_search_tree.dart';
import 'package:data_structures/structures/linked_list.dart';
import 'package:data_structures/structures/queue.dart';

void main(List<String> arguments) {


  final list = LinkedListImpl<int>();


  list.removeValue(2);

  list.add(1);
  list.add(20);
  list.add(23);
  list.add(3);
  list.insertAfter(2,17);
  list.pop();
  list.removeValue(2);
  list.printLits();


  final  Queue queue = Queue();

  print("__________________________");
  queue.encolar(10);
  queue.encolar(14);
  queue.encolar(47);
  queue.encolar(12);
  queue.encolar(3);
  queue.printQueue();

  print("último___ ${ queue.getLast()}");
  print("primero__ ${ queue.getHead()}");

  queue.eliminar();

  queue.printQueue();
  print("último__ ${ queue.getLast()}");
  print("primero__ ${ queue.getHead()}");



  print("....... Binary tree......");
  

  BinarySearchTree binarySearchTree = BinarySearchTree<int>();

  binarySearchTree.inserValue(10);
  binarySearchTree.inserValue(6);
  binarySearchTree.inserValue(4);
  binarySearchTree.inserValue(15);
  binarySearchTree.inserValue(13);
  binarySearchTree.inserValue(2);


  binarySearchTree.printTree();
}


