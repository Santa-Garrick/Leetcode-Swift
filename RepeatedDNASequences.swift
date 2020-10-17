class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        if s.count < 10 { return [] }
        
        let s = Array(s)
        var dict = [String: Int]()
        
        for i in 0 ... s.count - 10 {
            let key = String(s[i ..< i + 10])
            dict[key] = dict[key, default: 0] + 1
        }
        
        var ans = [String]()
        for (key, value) in dict {
            if value > 1 { ans.append(key) }
        }
        
        return ans
        
    }
}
