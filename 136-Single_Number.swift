class Solution {

//
// O(n) time
// O(1) space
//

    func singleNumber(_ nums: [Int]) -> Int {
        var ans = 0 
        for num in nums { ans ^= num }
        return ans
    }
        
//     func singleNumber(_ nums: [Int]) -> Int {
//         return nums.reduce(0) { $0 ^ $1 }
//     }
}

