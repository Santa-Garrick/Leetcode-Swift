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
    
// O(nlog(n)) time because of using array as a queue; could be improved by using a queue with O(1) complexity of dequeue() -> Int method
// O(n) in that case

    
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var q = [root]
        var level = 1
        
        while !q.isEmpty {
            let levelSize = q.count
            for _ in 0 ..< levelSize {
                let node = q.removeFirst()
                if node.isLeaf {
                    return level
                } else {
                    if let left = node.left {
                        q.append(left)
                    }
                    if let right = node.right {
                        q.append(right)
                    }
                }
            }
            level += 1
        }
        return level
    }
}


extension TreeNode {
    var isLeaf: Bool {
        return left == nil && right == nil
    }
}
