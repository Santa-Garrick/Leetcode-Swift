/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 
 
class Solution {

//
// O(n1 + n2) time
// O(n1 + n2) space
//

    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        
        if root1 == nil && root2 == nil { return true }
        guard let root1 = root1, let root2 = root2 else { return false }
        
        var leaves1 = [Int]()
        var leaves2 = [Int]()
        
        inOrder(root1, &leaves1)
        inOrder(root2, &leaves2)
        
        return leaves1 == leaves2

    }
    
    func inOrder(_ node: TreeNode, _ leaves: inout [Int]) {
        
        if let left = node.left {
            inOrder(left, &leaves)
        }
        
        if node.isLeaf {
            leaves.append(node.val)
            return
        }
        
        if let right = node.right {
            inOrder(right, &leaves)
        }
        
    }
}

extension TreeNode {
    var isLeaf: Bool {
        left == nil && right == nil
    }
}
