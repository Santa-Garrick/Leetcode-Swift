/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        var slow = head
        var fast = head
                
        while slow != nil, fast != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
                        
            if slow === fast {
                var head = head
                while head !== slow {
                    head = head?.next
                    slow = slow?.next
                }
                return head
            }
            
        }
        return nil
        
    }
}
