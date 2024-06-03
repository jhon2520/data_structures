class TreeNode<T extends num>{
  T value;
  TreeNode? leftTreeNode;
  TreeNode? rightTreeNode;

  TreeNode(this.value);
}

class BinarySearchTree<T extends num>{

  TreeNode<T>? treeRoot;

  BinarySearchTree();

  void inserValue(T value){

    TreeNode<T> valueToInsert = TreeNode<T>(value);

    if(treeRoot == null){
      treeRoot = valueToInsert;
    }else{
      TreeNode<T>? currentTree = treeRoot;
      while (true) {  
        if(value <  currentTree!.value){
          if(currentTree.leftTreeNode == null){
            currentTree.leftTreeNode = valueToInsert;
            break;
          }
          currentTree = currentTree.leftTreeNode as TreeNode<T>?;
        }else{
          if(currentTree.rightTreeNode == null){
            currentTree.rightTreeNode = valueToInsert;
            break;
          }
          currentTree = currentTree.rightTreeNode as TreeNode<T>?;

        }
      }
    }

  }

  void printTree(){
    var currentR = treeRoot;
    while(currentR?.rightTreeNode != null){
      print("right ${currentR?.rightTreeNode?.value}");
      currentR = currentR?.rightTreeNode as TreeNode<T>?;
    }
    var currentL = treeRoot;
    while(currentL?.leftTreeNode != null){
      print("left ${currentL?.leftTreeNode?.value}");
      currentL = currentL?.leftTreeNode as TreeNode<T>?;
    }
  }

}