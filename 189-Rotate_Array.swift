class Solution {
    func rotate(_ a: inout [Int], _ k: Int) {
        let k = k % a.count
                
        for i in 0 ..< a.count / 2 {
            let j = a.count - 1 - i
            a.swapAt(i, j)
        }
                
        for i in 0 ..< k / 2 {
            let j = k - 1 - i
            a.swapAt(i, j)
        }
        
        for i in k ..< (a.count - k) / 2 + k {
            let j = a.count - 1 - i + k
            a.swapAt(i, j)
        }
        
        
    }
}
