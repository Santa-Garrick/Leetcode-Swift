class Solution {

// O(n) space
// O(n) time

    func fairCandySwap(_ a: [Int], _ b: [Int]) -> [Int] {
    
        let sumA = a.reduce(0) {$0 + $1}
        let sumB = b.reduce(0) {$0 + $1}  
        let setB = Set(b)
        
        for candy in a {
            let complement = candy + (sumB - sumA) / 2
            if setB.contains(complement) {
                return [candy, complement]
            }
        }
        return []
    }
}
