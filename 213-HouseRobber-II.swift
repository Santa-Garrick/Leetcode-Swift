class Solution {

//
// O(n) time
// O(1) space
//

    func rob(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        if nums.count == 1 { return nums[0] }
        
        return max(robLine(Array(nums.dropLast())), robLine(Array(nums.dropFirst())))
    }
    
    private func robLine(_ nums: [Int]) -> Int {
        
        if nums.isEmpty { return 0 }
        if nums.count == 1 { return nums[0] }
        
        var amount = max(nums[0], nums[1])
        var prevAmount = nums[0]
        
        for i in 2 ..< nums.count {
            let tmp = amount
            amount = max(amount, (prevAmount + nums[i]))
            prevAmount = tmp
        }
        
        return amount
    }
}
