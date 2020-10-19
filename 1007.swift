// 1007. Minimum Domino Rotations For Equal Row

class Solution {
    func minDominoRotations(_ a: [Int], _ b: [Int]) -> Int {
        var aIndices = Array(repeating: Set<Int>(), count: 6)
        var bIndices = Array(repeating: Set<Int>(), count: 6)
        
        for (i, num) in a.enumerated() {
            aIndices[num - 1].insert(i)
        }
        for (i, num) in b.enumerated() {
            bIndices[num - 1].insert(i)
        }
        
        var ans = Array(repeating: Int.max, count: 6)
        
        for num in 1...6 {
            let union = aIndices[num - 1].union(bIndices[num - 1])
            print(union)
            if union.count >= a.count {
                ans[num - 1] =  min((a.count - aIndices[num - 1].count), 
                                    (b.count - bIndices[num - 1].count))
            }
        }

        return ans.min()! == Int.max ? -1 : ans.min()!
    }
}
