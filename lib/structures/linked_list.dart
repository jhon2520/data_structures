class Node<T> {
  T? value;
  Node<T>? next;

  Node(this.value);
}

class LinkedListImpl<T> {
  Node<T>? head;
  int _longitud = 0;

  LinkedListImpl();

  bool get isEmpty {
    return head == null;
  }

  int get length {
    return _longitud;
  }

  void add(T value) {
    final newNode = Node<T>(value);
    if (isEmpty) {
      head = newNode;
    } else {
      Node<T>? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
    _longitud++;
  }

  void removeValue(T value) {
    if (isEmpty) {
      return;
    }
    if (head!.value == value) {
      head = head!.next;
      return;
    }

    Node<T>? current = head;
    while (current!.next != null) {
      if (current.next!.value == value) {
        current.next = current.next!.next;
        _longitud--;
        return;
      }
      current = current.next;
    }
  }

  void pop() {
    if (isEmpty) {
      return;
    }
    var current = head;
    if (current!.next == null) {
      head = null;
      return;
    }

    while (current!.next != null) {
      if (current.next!.next == null) {
        current.next = null;
        _longitud--;
        return;
      }
      current = current.next;
    }
  }

  void insertAfter(int position, T value) {
    if (isEmpty && position > 0) {
      return;
    }

    final newValue = Node<T>(value);
    if (isEmpty && position == 0) {
      head = newValue;
    }

    int positionRef = 0;

    var current = head;
    while (current!.next != null) {
      positionRef++;
      if (positionRef == position) {
        final tempValue = current.next;
        current.next = newValue;
        current.next?.next = tempValue;
        _longitud++;
        return;
      }
      current = current.next;
    }
  }

  T? getValue(int position){
    if(isEmpty){
      return null;
    }

    var current = head;
    int positionRef = 0;
    while (current!.next != null) {
      positionRef++;
      if(positionRef == position){
        return current.next!.value;
      }
      current = current.next;
    }
    return null;
  }

  void printLits() {
    var current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}
