class Solution {
    
    // O(n) time
    // O(height) space
    // could be better: O(1) space no recursion, changing in-place right child <-> parent
    
    func increasingBST(_ root: TreeNode?) -> TreeNode? {        
        var newRoot: TreeNode?
        traverse(root, &newRoot)
        return newRoot
    }
    
    private func traverse(_ node: TreeNode?, _ newRoot: inout TreeNode?) {
        guard let node = node else { return }
        
        
        // reversed in-order
        traverse(node.right, &newRoot)
        
        let newNode = TreeNode(node.val, nil, newRoot)
        newRoot = newNode
        
        traverse(node.left, &newRoot)
        
    }
}
