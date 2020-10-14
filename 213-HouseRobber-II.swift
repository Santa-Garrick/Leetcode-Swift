class Solution {

//
// O(n) time: 1 loop in helper function
// O(1) space: 5 additional variables
//

    func rob(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        if nums.count == 1 { return nums[0] }
        
        let dropLast = Array(nums.dropLast())
        let dropFirst = Array(nums.dropFirst())
        
        return max(robLine(dropLast), robLine(dropFirst))
    }
    
    // Helper: rob lined houses
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
