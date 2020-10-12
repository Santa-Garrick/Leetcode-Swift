class Solution {
    func shortestToChar(_ s: String, _ char: Character) -> [Int] {
        var ans = [Int]()
        
        for c in s {
            if c == char {
                ans.append(0)
            } else {
                ans.append(-1)
            }
        }
        
        var last = -1
        
        for i in 0..<ans.count {
            if last == -1 && ans[i] != 0 { 
                continue 
            } 
            if ans[i] == 0 {
                last = i
            }
            ans[i] = i - last
        }
        
        for j in 0..<ans.count {
            let i = ans.count - 1 - j
            if ans[i] == -1 {
                ans[i] = last - i
            } else if ans[i] == 0 {
                last = i
            } else {
                ans[i] = min(ans[i], abs(last - i))
            }
        }
        return ans
    }
}
