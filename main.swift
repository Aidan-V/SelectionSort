var unsortedIntegers = [String]()

func readLine() -> [String] {
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            unsortedIntegers.append(line!)
        }
    } while line != nil
    return unsortedIntegers
}

func selectionSort(unsortedIntegers: [String]) -> [String] {

    var sortInts = readLine()
        for x in 0..<sortInts.count-1 {
            var mainArr = x

            
                for j in x+1..<sortInts.count {
                    if sortInts[j] < sortInts[mainArr] {
                        mainArr = j
                    }
                }
                let tmp = sortInts[x]
                sortInts[x] = sortInts[mainArr]
                sortInts[mainArr] = tmp
        }
        return sortInts
}
let sortingInts = selectionSort(unsortedIntegers: unsortedIntegers)

for x in sortingInts {
    print(x)
}


