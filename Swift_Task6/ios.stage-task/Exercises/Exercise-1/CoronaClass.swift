import Foundation

class CoronaClass {
 
     var seats = [Int]()
     var countTables:Int
     var  distArr:Array<Int> = []

     init(n: Int) {
        countTables = n
     }
     
     func seat() -> Int {
        
        var mesto:Int = 0
        
        if seats.count == 0 {
            mesto = 0
        } else {
        
        if ((seats.count == 1) && (seats[0] == 0)) {
            mesto = countTables - 1
        } else {
        
        if ((seats.count < countTables) && (seats.count != 0) && (seats[0] != 0)) {
            mesto = 0
        } else {
            distArr.removeAll()
            
            var betweenValues = 1
            for i in 1..<countTables {
                    if (i != seats[betweenValues]) {
                        distArr.append(i)
                    } else {
                        if seats.last! == countTables - 1   {
                            betweenValues += 1}}
            }
            
            var minIndex:Int = 0
            var minArr = [[Int]]()
            var distMin:Int = countTables
            for i in distArr {
                for j in seats {
                    if abs(i - j) < distMin {
                        distMin = abs(i - j)
                        minIndex = i
                    }
                }
                minArr.append([distMin,minIndex])
                distMin = countTables
            }

            let sortedArray = minArr.sorted(by: {($0[0] as Int) > ($1[0] as Int) })
            mesto = sortedArray[0][1]
            
        }}}
        
        seats.append(mesto)
        seats = seats.sorted(by: <)
        
        return mesto
     }
     
     func leave(_ p: Int) {
        
        if let index = seats.firstIndex(of: p) {
            seats.remove(at: index)
        }
     }
}
