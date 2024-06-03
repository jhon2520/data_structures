class Node<T>{
  T value;
  Node<T>? next;

  Node(this.value);
} 

class Queue<T>{

  Node<T>? firts;
  Node<T>? last;

  bool get isEmpty{
    return firts == null;
  }

  Queue();

  void encolar(T value){

    var newValue = Node<T>(value);
    if(firts == null){
      firts = newValue;
    }else{
      Node<T>? current = firts;
      while(current!.next != null){
        current = current.next;
      }
      current.next = newValue;
      last = newValue;
    }
  }

  T? getHead(){
    return firts?.value;
  } 
  T? getLast(){
    return last?.value;
  }

  void eliminar(){  
    if(isEmpty){
      return;
    }
    firts = firts?.next;
  }

  void printQueue(){
    if(isEmpty){
      return;
    }

    var current = firts;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }

}