//Solution goes in Sources

import Foundation

enum NumberClassification {
    case perfect
    case abundant
    case deficient
}

class NumberClassifier {
    var classification: NumberClassification
    init(number: Int) {
        var sum = 0
        for num in 1..<number {
            if number % num == 0 {
                sum += num
            }
        }
        if sum == number {
            classification = .perfect
        } else if sum < number {
            classification = .deficient
        } else {
            classification = .abundant
        }
    }
}

