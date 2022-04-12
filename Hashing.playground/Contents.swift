import Darwin

let dictionary = "abehinoprstuv"

func hash(string: String) -> Int {
    let seed = onGenerateSeed(string: string)
    return seed
}

func onGenerateSeed(string: String) -> Int {
    var seed = 47
    for i in string {
        seed = (seed * 19 + distance(index: i))
    }
    return seed
}

func distance(index: String.Element) -> Int {
    let from = dictionary.startIndex
    let to = dictionary.firstIndex(of: index)
    return dictionary.distance(from: from, to: to!)
}

func calculate(string: String) -> [Int] {
    var values: [Int] = []
    if (string.count != 10) {
        return []
    } else {
        for i in string {
            let value = hash(string: String(i))
            values.append(value)
        }
        return values
    }
}

func possibleCombinations() -> Int {
    return Int(pow(Double(dictionary.count), Double(10)))
}

possibleCombinations()

calculate(string: "aaaaaaaaaa")
calculate(string: "aaaaaaaaab")
calculate(string: "aaaaaaaabb")
calculate(string: "vvvvvvvvvv")
let result = hash(string: "perseverar")
//Result to find: 290460476046687



