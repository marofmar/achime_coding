// Leaf-Similar Trees
// 각각의 집안에서 제일 어린 자식노드들이 서로 같은 값으로, 같은 순서로 배열돼 있는지 비교하기

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> kids1 = [];
    List<int> kids2 = [];

    void getKids(TreeNode? currNode, List<int> kids) {
        if (currNode == null) return ;

        if (currNode.left==null && currNode.right==null){
            kids.add(currNode.val);
        }

        getKids(currNode.left, kids);
        getKids(currNode.right, kids);
    } // fn 

    getKids(root1, kids1);
    getKids(root2, kids2);
    if (kids1.length == kids2.length) {
        for (var i = 0; i<kids1.length; i++) {
            if (kids1[i] != kids2[i]){
                return false;
            } 
        } return true;

     }
     return false;
    }
    

  }
  
